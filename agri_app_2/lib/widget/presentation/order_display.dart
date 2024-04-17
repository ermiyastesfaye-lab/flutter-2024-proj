import 'package:agri_app_2/data/dummy_data.dart';
import 'package:agri_app_2/model/order_display.dart';
import 'package:flutter/material.dart';

class OrderDisplayWidget extends StatelessWidget {
  const OrderDisplayWidget({super.key, required this.order});

  final OrderDisplay order;

  @override
  Widget build(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  order.image,
                  width: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(order.user, style: TextStyle(color: myColor.primary)),
                    Row(
                      children: [
                        Text(order.title,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text('(${order.number})',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: myColor.secondary,
                      ),
                      child: const Row(
                        children: [
                          Text('Sold',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            TextButton.icon(
                style: TextButton.styleFrom(iconColor: myColor.primary),
                onPressed: () {},
                icon: const Icon(Icons.delete),
                label: const Text(''))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
