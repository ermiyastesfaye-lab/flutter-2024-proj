import 'package:agri_app_2/model/cop_management_list.dart';
import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CropListManagement extends StatelessWidget {
  const CropListManagement({super.key, required this.crop});

  final CropManagementList crop;

  @override
  Widget build(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 12, 0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: themeProvider.getTheme == darkTheme
              ? const Color.fromARGB(255, 0, 64, 0)
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    crop.price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: themeProvider.getTheme == darkTheme
                            ? Colors.white
                            : const Color.fromARGB(255, 103, 103, 103)),
                  ),
                  Text(
                    crop.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: themeProvider.getTheme == darkTheme
                          ? Colors.white
                          : const Color.fromARGB(255, 103, 103, 103),
                    ),
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/editCrop');
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