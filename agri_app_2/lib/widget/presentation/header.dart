import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.text = 'Crop Management', // Add an optional text parameter
  });

  final String text; // Define the text variable

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text, // Use the provided text
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ],
    );
  }
}
