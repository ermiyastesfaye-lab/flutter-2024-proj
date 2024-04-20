import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/logo.dart';
import 'package:agri_app_2/widget/presentation/app_bar.dart';
import 'package:agri_app_2/widget/presentation/bottom_nav_bar.dart';
import 'package:agri_app_2/widget/presentation/menu_bar.dart';
import 'package:agri_app_2/widget/presentation/order_display.dart';
import 'package:flutter/material.dart';

class OrderDisplayScreen extends StatelessWidget {
  const OrderDisplayScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        drawer: const MenuBarWidget(),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: LogoWidget(logo: logos[1]),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: myColor.tertiary)),
                      const SizedBox(height: 20),
                      for (final order in availableOrders)
                        OrderDisplayWidget(order: order)
                    ],
                  ),
                ],
              )),
        ),
        bottomNavigationBar: const BottomNavBarWidget());
  }
}
