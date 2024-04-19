import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/Logo.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class FarmerOrderDisplay extends StatelessWidget {
  const FarmerOrderDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const MenuBarWidget(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints(maxWidth: 700.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: LogoWidget(logo: logos[1]),
            ),
            const SizedBox(height: 16),
            const Text(
              'Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 16), // Add spacing between Orders and list
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  String itemName;
                  String imagePath;
                  Widget quantity;
                  switch (index) {
                    case 0:
                      itemName = 'Wheat(2)';
                      imagePath = 'assets/fruits.jpg';
                      quantity =
                          const SizedBox(width: 150, child: QualityListItem());
                      break;
                    case 1:
                      itemName = 'Corn(2)';
                      imagePath = 'assets/fruits2.jpg';
                      quantity =
                          const SizedBox(width: 150, child: QualityListItem());
                      break;
                    case 2:
                      itemName = 'Barley(2)';
                      imagePath = 'assets/agri.jpg';
                      quantity =
                          const SizedBox(width: 150, child: QualityListItem());
                    case 3:
                      itemName = 'Barley(2)';
                      imagePath = 'assets/agri.jpg';
                      quantity =
                          const SizedBox(width: 150, child: QualityListItem());
                      break;
                    default:
                      itemName = 'Unknown';
                      imagePath = 'assets/agri2.jpg';
                      quantity =
                          const SizedBox(width: 150, child: QualityListItem());
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
                                quantity
                              ],
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/marketPlace');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: themeProvider.getTheme ==
                                        darkTheme
                                    ? const Color.fromARGB(255, 0, 64, 0)
                                    : const Color.fromARGB(255, 33, 119, 50),
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

class QualityListItem extends StatefulWidget {
  const QualityListItem({super.key});

  @override
  State<QualityListItem> createState() => _QualityListItemState();
}

class _QualityListItemState extends State<QualityListItem> {
  int _quantity = 0; // Initial quality value

  void _incrementQuality() {
    setState(() {
      if (_quantity < 100) {
        _quantity++;
      }
    });
  }

  void _decrementQuality() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          IconButton(
            onPressed: _decrementQuality,
            icon: const Icon(Icons.remove),
          ),
          Text(
            '$_quantity',
            style: TextStyle(
                fontSize: 20,
                color: myColor.primary,
                fontWeight: FontWeight.bold), // Text color
          ),
          IconButton(
            onPressed: _incrementQuality,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
