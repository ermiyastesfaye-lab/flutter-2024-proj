import 'package:agri_app_2/screens/presentation/signup.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../screens/presentation/dash_board.dart';

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
              themeProvider.toggleTheme();
            },
            leading: SizedBox(
              width: 24, // Adjust the width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    themeProvider.getTheme == darkTheme ? Icons.light_mode : Icons.dark_mode,
                    // You can adjust the size, color, and other properties of the icon as needed
                    size: 24,
                    color: themeProvider.getTheme == darkTheme
                                    ? Colors.white
                                    : const Color.fromARGB(
                                        255, 103, 103, 103), // Adjust the color as needed
                  ),
                  
                ],
              ),
            ),
            title: const Text('DarkMode', style: TextStyle(fontSize: 20)),
          ),

          ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              leading: Icon(
                Icons.logout,
                size: 26,
                color: themeProvider.getTheme == darkTheme
                                    ? Colors.white
                                    : const Color.fromARGB(
                                        255, 103, 103, 103),
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
              leading: Icon(
                Icons.help,
                size: 26,
                color: themeProvider.getTheme == darkTheme
                                    ? Colors.white
                                    : const Color.fromARGB(
                                        255, 103, 103, 103),
              ),
              title: const Text('About App', style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}
