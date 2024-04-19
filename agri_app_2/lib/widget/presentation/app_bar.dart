import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => const SizedBox();

  @override
  Widget build(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
        title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'AgriConnect',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Icon(Icons.shopping_cart, color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103))
      ],
    ));
  }
}