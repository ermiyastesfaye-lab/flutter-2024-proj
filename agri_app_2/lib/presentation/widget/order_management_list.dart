import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/model/order_management_list.dart';
import 'package:flutter/material.dart';

class OrderListManagement extends StatelessWidget {
  const OrderListManagement({super.key, required this.crop});

  final OrderManagementList crop;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 12, 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
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
                        fontWeight: FontWeight.bold, color: myColor.tertiary),
                  ),
                  Text(
                    crop.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: myColor.tertiary),
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/order');
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
