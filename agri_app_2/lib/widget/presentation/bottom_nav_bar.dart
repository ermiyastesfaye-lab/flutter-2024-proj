import 'package:agri_app_2/screens/presentation/dash_board.dart';
import 'package:agri_app_2/screens/presentation/order_display.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
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
      currentIndex: _selectedIndex, // Set the current index
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.agriculture),
          label: 'Crops',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop_two),
          label: 'Market',
        ),
      ],
      selectedItemColor: Colors.black, // Active color for the selected item
    );
  }
}
