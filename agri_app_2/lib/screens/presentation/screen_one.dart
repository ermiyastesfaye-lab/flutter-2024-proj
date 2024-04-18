import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/back.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/header.dart';
import 'package:agri_app_2/widget/presentation/logo_1.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

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
            const Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('+ Add',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  gridItem('assets/fruits.jpg', 'Wheat', 12.00),
                  gridItem('assets/fruits2.jpg', 'Corn', 15.50),
                  gridItem('assets/agri.jpg', 'Barley', 8.99),
                  gridItem('assets/agri2.jpg', 'Rice', 18.25),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  Widget gridItem(String imagePath, String name, double price) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text('\$${price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }
}
