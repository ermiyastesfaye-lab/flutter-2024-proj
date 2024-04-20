import 'package:agri_app_2/screens/presentation/add_crop.dart';
import 'package:agri_app_2/screens/presentation/market_place.dart';
import 'package:agri_app_2/screens/presentation/crop_management.dart';
import 'package:agri_app_2/screens/presentation/dash_board.dart';
import 'package:agri_app_2/screens/presentation/edit.dart';
import 'package:agri_app_2/screens/presentation/farmer_order_display.dart';
import 'package:agri_app_2/screens/presentation/landing_page.dart';
import 'package:agri_app_2/screens/presentation/login.dart';
import 'package:agri_app_2/screens/presentation/order.dart';
import 'package:agri_app_2/screens/presentation/order_display.dart';
import 'package:agri_app_2/screens/presentation/signup.dart';
import 'package:agri_app_2/screens/presentation/update.dart';
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
      child: const MainWidget(),
    ),
  );
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
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
          '/dashBoard': (context) => const DashBoardScreen(),
          '/cropManagement': (context) => const CropMangement(),
          '/addCrop': (context) => const AddCrop(),
          '/editCrop': (context) => const EditPage(),
          '/updateCrop': (context) => const UpdatePage(),
          '/marketPlace': (context) => const MarketPlace(),
          '/orderDisplayBuyer': (context) => const OrderDisplayScreen(),
          '/order': (context) => const OrderPage(),
          '/orderDisplayFarmer': (context) => const FarmerOrderDisplay(),
        },
        theme: themeProvider.getTheme,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
