import 'package:agri_app_2/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../../model/crop_list.dart';

class CropListWidget extends StatelessWidget {
  const CropListWidget({super.key, required this.crop});

  final CropList crop;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(crop.image, width: 150)),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(crop.price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: myColor.tertiary)),
              const SizedBox(width: 75),
              Icon(Icons.shopping_cart, color: myColor.tertiary)
            ],
          )
        ],
      ),
    );
  }
}
