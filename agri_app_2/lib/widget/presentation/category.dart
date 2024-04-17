import 'package:agri_app_2/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../../model/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final Category category;

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(const Size(100, 10)),
      ),
      child: Text(category.title,
          style: TextStyle(
            color: myColor.primary,
          )),
    );
  }
}
