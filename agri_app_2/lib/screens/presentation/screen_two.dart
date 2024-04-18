import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/back.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/header.dart';
import 'package:agri_app_2/widget/presentation/logo_1.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints(maxWidth: 700.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Back(),
            const Logo(),
            const Header(text: 'Order Management'),
            const SizedBox(height: 16),
            const Text(
              'Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 16), // Add spacing between Orders and list
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  String itemName;
                  String imagePath;
                  switch (index) {
                    case 0:
                      itemName = 'Wheat(2)';
                      imagePath = 'assets/fruits.jpg';
                      break;
                    case 1:
                      itemName = 'Corn(2)';
                      imagePath = 'assets/fruits2.jpg';
                      break;
                    case 2:
                      itemName = 'Barley(2)';
                      imagePath = 'assets/agri.jpg';
                      break;
                    default:
                      itemName = 'Unknown';
                      imagePath = 'assets/agri2.jpg';
                  }
                  return Row(
                    children: [
                      Image.asset(
                        imagePath,
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  itemName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.green[800],
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Sell'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
