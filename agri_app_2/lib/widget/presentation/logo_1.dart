import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/fruits.jpg',
            width: 350,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
