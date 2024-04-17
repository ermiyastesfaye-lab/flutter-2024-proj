import 'package:flutter/material.dart';
import '../../screens/presentation/dash_board.dart';
import '../../screens/presentation/order_display.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/fruits.jpg'))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
          ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DashBoardScreen()));
              },
              leading: const Icon(
                Icons.agriculture,
                size: 26,
                color: Colors.black,
              ),
              title:
                  const Text('Manage Crops', style: TextStyle(fontSize: 20))),
          ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DashBoardScreen()));
              },
              leading: const Icon(
                Icons.dark_mode,
                size: 26,
                color: Colors.black,
              ),
              title: const Text('Dark Mode', style: TextStyle(fontSize: 20))),
          ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrderDisplayScreen()));
              },
              leading: const Icon(
                Icons.contact_page,
                size: 26,
                color: Colors.black,
              ),
              title: const Text('Contact Us', style: TextStyle(fontSize: 20))),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DashBoardScreen()));
              },
              leading: const Icon(
                Icons.help,
                size: 26,
                color: Colors.black,
              ),
              title: const Text('About App', style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}
