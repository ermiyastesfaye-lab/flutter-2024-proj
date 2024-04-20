import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/logo.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        drawer: const MenuBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Opacity(
                opacity: 0.5,
                child: IgnorePointer(
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 19, vertical: 10),
                          child: LogoWidget(logo: logos[0]),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  myColor.secondary, // Background color
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: Colors.white, size: 15),
                                Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 246, 246, 246),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crop Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: myColor.tertiary),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Crop Name',
                          style:
                              TextStyle(fontSize: 16, color: myColor.tertiary),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Corn',
                          style: TextStyle(
                              fontSize: 20,
                              color: myColor.primary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Crop Type',
                          style:
                              TextStyle(fontSize: 16, color: myColor.tertiary),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Zea mays',
                          style: TextStyle(
                              fontSize: 20,
                              color: myColor.primary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Planting Date',
                          style:
                              TextStyle(fontSize: 16, color: myColor.tertiary),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          '14/04/2024',
                          style: TextStyle(
                              fontSize: 20,
                              color: myColor.primary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Harvesting Date',
                          style:
                              TextStyle(fontSize: 16, color: myColor.tertiary),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          '14/04/2024',
                          style: TextStyle(
                              fontSize: 20,
                              color: myColor.primary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price(ETB)',
                          style:
                              TextStyle(fontSize: 16, color: myColor.tertiary),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          'ETB 200',
                          style: TextStyle(
                              fontSize: 20,
                              color: myColor.primary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/updateCrop');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: myColor.secondary,
                              // Background color
                            ),
                            child: const Text(
                              'Edit',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cropManagement');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: myColor.secondary,
                              // Background color
                            ),
                            child: const Text(
                              'Remove',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ], // Removed extra comma here
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBarWidget());
  }
}
