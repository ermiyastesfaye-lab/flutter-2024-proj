import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/Logo.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'edit.dart';
import 'update.dart';
import 'order.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OrderPage()),
                            );
                          },
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
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 460,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(227, 238, 235, 235)),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crop Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: myColor.tertiary,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Crop Name',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
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
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
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
                          'Price(ETB)',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quality',
                          style: TextStyle(
                            fontSize: 16,
                            color: myColor.tertiary,
                          ),
                        ),
                        const SizedBox(width: 150, child: QualityListItem()),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OrderPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColor.secondary,
                            // Background color
                          ),
                          child: const Text(
                            'Order',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBarWidget());
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
