import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color:themeProvider.getTheme == darkTheme
                              ? const Color.fromARGB(255, 0, 64, 0)
                              : const Color.fromARGB(255, 33, 119, 50),), // Change 'myColor.secondary' to 'Colors.blue' or define 'myColor.secondary' elsewhere.
                ),
              ),
            Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(fontSize: 16, color: themeProvider.getTheme == darkTheme
                              ? Colors.white
                              : const Color.fromARGB(255, 103, 103, 103)),
                  textAlign: TextAlign.center,
                ),
            const SizedBox(height: 80),
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
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signUp');
                  },
                  child: const Text("Sign Up"),
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
