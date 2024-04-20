import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/logo.dart';
import 'package:agri_app_2/widget/presentation/crop_management_list.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';

class CropMangement extends StatelessWidget {
  const CropMangement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const MenuBarWidget(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints(maxWidth: 700.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: LogoWidget(logo: logos[0]),
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addCrop');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: myColor.secondary),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 15),
                      Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'List',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: myColor.tertiary),
                ),
                const SizedBox(height: 20),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    for (final crop in availableCrop2)
                      CropListManagement(crop: crop)
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 10.0),
              Text(
                '${amount.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
