import 'package:agri_app_2/model/logo.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/dummy_data.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, required this.logo});

  final Logo logo;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/fruits.jpg',
                width: 500, height: 120, fit: BoxFit.fill)),
        Text(logo.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: themeProvider.getTheme == darkTheme
                            ? Colors.white
                            : const Color.fromARGB(255, 103, 103, 103)))
      ],
    );
  }
}
