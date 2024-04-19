import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/screens/presentation/order.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 00, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:themeProvider.getTheme == darkTheme
                              ? const Color.fromARGB(255, 0, 64, 0)
                              : const Color.fromARGB(255, 33, 119, 50), ), // Change 'myColor.secondary' to 'Colors.blue' or define 'myColor.secondary' elsewhere.
              ),
            ),
             Center(
              child: Text(
                "Create an account to access available agricultural products",
                style: TextStyle(fontSize: 16, color: themeProvider.getTheme == darkTheme
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/logIn');
                  },
                  child: const Text("Log in"),
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
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dark Mode',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: themeProvider.getTheme == darkTheme,
                      onChanged: (value) {
                        themeProvider.toggleTheme();
                      },
                    ),
                  ],
                ),
              ),
          ],
          
        ),
      ),
    );
  }
}
