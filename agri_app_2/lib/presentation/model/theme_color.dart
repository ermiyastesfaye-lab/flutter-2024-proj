import 'package:flutter/material.dart';

class MyColor {
  MyColor({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.background,
  });

  Color primary;
  Color secondary;
  Color tertiary;
  Color background;

  factory MyColor.lightMode() {
    return MyColor(
      primary: Colors.grey,
      secondary: const Color.fromARGB(255, 33, 119, 50),
      tertiary: const Color.fromARGB(255, 103, 103, 103),
      background: Colors.white,
    );
  }

  factory MyColor.darkMode() {
    return MyColor(
      primary: const Color.fromARGB(255, 22, 22, 22),
      secondary: const Color.fromARGB(255, 0, 64, 0),
      tertiary: Colors.white,
      background: Colors.black,
    );
  }
}
