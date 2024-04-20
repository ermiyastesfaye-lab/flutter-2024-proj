import 'package:agri_app_2/data/dummy_data.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, right: 16, left: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: myColor.secondary),
                ),
              ),
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(fontSize: 18, color: myColor.tertiary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: myColor.primary),
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
                        backgroundColor: myColor.secondary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(fontSize: 18, color: myColor.tertiary)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child:
                        const Text("Sign Up", style: TextStyle(fontSize: 18)),
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
