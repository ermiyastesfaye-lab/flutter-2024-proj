import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.getTheme == darkTheme
                        ? const Color.fromARGB(255, 0, 64, 0)
                        : const Color.fromARGB(255, 33, 119, 50),
                  ), // Change 'myColor.secondary' to 'Colors.blue' or define 'myColor.secondary' elsewhere.
                ),
              ),
              Center(
                child: Text(
                  "Create an account to access available agricultural products",
                  style: TextStyle(
                      fontSize: 18,
                      color: themeProvider.getTheme == darkTheme
                          ? Colors.white
                          : const Color.fromARGB(255, 103, 103, 103)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: myColor
                              .primary), // Change 'myColor.primary' to 'Colors.blue' or define 'myColor.primary' elsewhere.
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: DropdownButtonFormField<String>(
                  items: ["Farmer", "Buyer"].map((role) {
                    return DropdownMenuItem<String>(
                      value: role,
                      child: Text(role),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: "Role",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: myColor
                                .primary), // Change 'myColor.primary' to 'Colors.blue' or define 'myColor.primary' elsewhere.
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'Password',
                    ),
                    obscureText: true),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: myColor
                                .primary), // Change 'myColor.primary' to 'Colors.blue' or define 'myColor.primary' elsewhere.
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'Confirm Password',
                    ),
                    obscureText: true),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashBoard');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: themeProvider.getTheme == darkTheme
                            ? const Color.fromARGB(255, 0, 64, 0)
                            : const Color.fromARGB(255, 33, 119, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 18,
                          color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103))),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/logIn');
                    },
                    child: const Text("Log in", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Google login
                    },
                    icon: const Icon(Icons.android),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Facebook login
                    },
                    icon: const Icon(Icons.facebook),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Apple login
                    },
                    icon: const Icon(Icons.apple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
