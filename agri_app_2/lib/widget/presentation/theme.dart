import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;
  late SharedPreferences prefs;
  ThemeProvider({bool isDark = true}) {
    this._selectedTheme = isDark ? darkTheme : lightTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  Future<void> toggleTheme() async {
    prefs = await SharedPreferences.getInstance();
    bool isDark = !(prefs.getBool('isDark') ?? false); // Get current theme preference

    if (isDark) {
      _selectedTheme = darkTheme;
    } else {
      _selectedTheme = lightTheme;
    }

    await prefs.setBool("isDark", isDark); // Save the new theme preference

    // Notify all the listeners (consumers) about the theme change.
    notifyListeners();
  }
}

// LightTheme
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  textTheme: lightTextTheme,
);

final lightTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.black,
);
final lightTextTheme = TextTheme(
  bodyLarge: lightTextStyle,
);

// DarkTheme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
);

final darkTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);
final darkTextTheme = TextTheme(
  bodyLarge: darkTextStyle,
);
