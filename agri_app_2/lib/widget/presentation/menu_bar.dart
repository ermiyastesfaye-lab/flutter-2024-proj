import 'package:agri_app_2/screens/presentation/login.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../screens/presentation/dash_board.dart';
import '../../screens/presentation/order_display.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
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
            leading: SizedBox(
              width: 70, // Adjust the width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: themeProvider.getTheme == darkTheme,
                    onChanged: (value) {
                      themeProvider.toggleTheme();
                    },
                  ),
                ],
              ),
            ),
            title: const Text('Dark Mode', style: TextStyle(fontSize: 20)),
          ),
          ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              leading: const Icon(
                Icons.logout,
                size: 26,
                color: Colors.black,
              ),
              title: const Text('Log out', style: TextStyle(fontSize: 20))),
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
