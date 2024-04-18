import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/back.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/header.dart';
import 'package:agri_app_2/widget/presentation/logo_1.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        padding:
            const EdgeInsets.all(16.0), // Add some padding around the content
        constraints:
            const BoxConstraints(maxWidth: 700.0), // Set a maximum width
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Back(),
            const Logo(),
            const Header(text: 'Order Management'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "List",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Divider(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  gridItem('assets/fruits.jpg', 'Wheat', 12),
                  gridItem('assets/fruits2.jpg', 'Corn', 15),
                  gridItem('assets/agri.jpg', 'Barley', 8),
                  gridItem('assets/agri2.jpg', 'Rice', 18),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  Widget gridItem(String imagePath, String name, int amount) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            '\$${amount.toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
