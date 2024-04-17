import 'package:agri_app_2/data/dummy_data.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => const SizedBox();

  @override
  Widget build(context) {
    return AppBar(
        title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'AgriConnect',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Icon(Icons.shopping_cart, color: myColor.tertiary)
      ],
    ));
  }
}
