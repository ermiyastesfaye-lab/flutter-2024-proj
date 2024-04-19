import 'package:agri_app_2/screens/presentation/dash_board.dart';
import 'package:agri_app_2/screens/presentation/landing_page.dart';
import 'package:agri_app_2/screens/presentation/login.dart';
import 'package:agri_app_2/screens/presentation/signup.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //required to use platform channels to call native code.
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool themeBool = prefs.getBool("isDark") ?? false; //null check
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDark: themeBool),
      child: MainWidget(),
    ),
  );
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Wrapping MaterialApp with Consumer makes the ThemeProvider available throughout the app.
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        title: 'Flutter Theme',
        initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/signUp': (context) => const SignUp(),
        '/logIn': (context) => const LoginPage(),
        '/dashBoard': (context) => const DashBoardScreen(),},
        
        theme: themeProvider.getTheme,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}