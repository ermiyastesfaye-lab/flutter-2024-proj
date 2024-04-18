import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.green),
              ),
            ),
            Center(
              child: Text(
              "Welcome back, you've been missed!",
              style: TextStyle(fontSize: 18),
            ),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password action
                },
                child: Text("Forgot your password?"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login button press
              },
              child: Text("Log In"),
               style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
            ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Handle create new account action
              },
              child: Text("Create new account"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle Google login
                  },
                  icon: Icon(Icons.android),
                ),
                IconButton(
                  onPressed: () {
                    // Handle Facebook login
                  },
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {
                    // Handle Apple login
                  },
                  icon: Icon(Icons.apple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
