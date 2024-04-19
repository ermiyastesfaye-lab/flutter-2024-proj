import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/crop_list.dart';

class CropListWidget extends StatelessWidget {
  const CropListWidget({super.key, required this.crop});

  final CropList crop;

  @override
  Widget build(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: themeProvider.getTheme == darkTheme
              ? const Color.fromARGB(255, 27, 27, 27)
              : Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Center(
                  child: Image.asset(
                crop.image,
                width: 150,
              ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                crop.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: themeProvider.getTheme == darkTheme
                        ? Colors.white
                        : const Color.fromARGB(255, 103, 103, 103)),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/marketPlace');
                },
                icon: Icon(Icons.shopping_cart,
                    color: themeProvider.getTheme == darkTheme
                        ? Colors.white
                        : const Color.fromARGB(255, 103, 103, 103)),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
