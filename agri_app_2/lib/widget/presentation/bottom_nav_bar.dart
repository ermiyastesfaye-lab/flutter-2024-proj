import 'package:agri_app_2/screens/presentation/dash_board.dart';
import 'package:agri_app_2/screens/presentation/order_display.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(context) {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == 0) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DashBoardScreen()));
        } else if (index == 1) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const OrderDisplayScreen()));
        } else {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DashBoardScreen()));
        }
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Order'),
        BottomNavigationBarItem(icon: Icon(Icons.shop_two), label: 'Market')
      ],
    );
  }
}
