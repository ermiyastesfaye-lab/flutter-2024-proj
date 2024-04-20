import 'package:agri_app_2/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../../model/crop_list.dart';

class CropListWidget extends StatelessWidget {
  const CropListWidget({super.key, required this.crop});

  final CropList crop;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
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
                    fontWeight: FontWeight.bold, color: myColor.tertiary),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/marketPlace');
                },
                icon: Icon(Icons.shopping_cart, color: myColor.tertiary),
                label: const Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
