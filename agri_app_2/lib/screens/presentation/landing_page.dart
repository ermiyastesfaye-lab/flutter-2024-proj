import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor:
          themeProvider.getTheme == darkTheme ? Colors.grey[900] : Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 120),
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  themeProvider.toggleTheme();
                },
                leading: SizedBox(
                  width: 24, // Adjust the width as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        themeProvider.getTheme == darkTheme
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        // You can adjust the size, color, and other properties of the icon as needed
                        size: 24,
                        color: themeProvider.getTheme == darkTheme
                            ? Colors.white
                            : const Color.fromARGB(255, 103, 103,
                                103), // Adjust the color as needed
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset('assets/landingimage.png'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Text(
                  'Explore All Available Agricultural Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: myColor.secondary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Empowering farmers to efficiently manage crops and connect with buyers',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: themeProvider.getTheme == darkTheme
                          ? Colors.white
                          : const Color.fromARGB(255, 103, 103, 103)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/logIn');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeProvider.getTheme == darkTheme
                              ? const Color.fromARGB(255, 0, 64, 0)
                              : const Color.fromARGB(255, 33, 119,
                                  50), // Change button color based on theme
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeProvider.getTheme == darkTheme
                              ? const Color.fromARGB(255, 0, 64, 0)
                              : const Color.fromARGB(
                                  255, 33, 119, 50), // Always blue
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
