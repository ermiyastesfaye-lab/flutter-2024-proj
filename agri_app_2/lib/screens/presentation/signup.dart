// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                "Create Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.green),
              ),
            ),
            Center(
              child: Text(
              "Create an account to access available agricultural products",
              style: TextStyle(fontSize: 18),
            ),),
           
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              items: ["Farmer", "Supplier", "Buyer"].map((role) {
                return DropdownMenuItem<String>(
                  value: role,
                  child: Text(role),
                );
              }).toList(),
              onChanged: (value) {
                // Handle role selection
              },
              decoration: InputDecoration(labelText: "Role"),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: "Confirm Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign up button press
              },
              child: Text("Sign Up"),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Handle "Already have an account? Log in" link
              },
              child: Text("Already have an account? Log in"),
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
