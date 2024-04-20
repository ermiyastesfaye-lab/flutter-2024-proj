import 'package:agri_app_2/screens/presentation/dash_board.dart';
import 'package:agri_app_2/screens/presentation/crop_management.dart';
import 'package:agri_app_2/screens/presentation/market_place.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        if (index == 0) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DashBoardScreen()));
        } else if (index == 1) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CropMangement()));
        } else {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MarketPlace()));
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
