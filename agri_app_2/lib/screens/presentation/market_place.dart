import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/logo.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:agri_app_2/widget/presentation/order_management_list.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const MenuBarWidget(),
      body: Container(
        padding:
            const EdgeInsets.all(16.0), // Add some padding around the content
        constraints:
            const BoxConstraints(maxWidth: 700.0), // Set a maximum width
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: LogoWidget(logo: logos[1]),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Order',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: myColor.tertiary)),
                const SizedBox(height: 30),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: [
                    for (final crop in availableCrop3)
                      OrderListManagement(crop: crop)
                  ]),
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
