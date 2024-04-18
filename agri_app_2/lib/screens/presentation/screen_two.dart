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
          constraints:
              const BoxConstraints(maxWidth: 700.0), // Set a maximum width
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Back(),
              Logo(),
              Header(),
              const SizedBox(height: 16),
              const Text(
                'Orders',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16), // Add spacing between Orders and list
              Expanded(
                // Wrap the list view with Expanded for vertical space filling
                child: ListView.separated(
                  shrinkWrap: true, // Prevent excessive scrolling
                  itemCount: 3, // Number of list items
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    String itemName;
                    if (index == 0) {
                      itemName = 'Wheat(2)';
                    } else if (index == 2) {
                      itemName = 'Barley(2)';
                    } else {
                      itemName = 'Corn(2)';
                    }
                    return Row(
                      children: [
                        Image.asset(
                          'assets/fruits${index + 1}.jpg', // Use placeholders
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                            width: 16), // Add space between image and text
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                // Column for text
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
        bottomNavigationBar: const BottomNavBarWidget());
  }
}
