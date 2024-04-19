import 'package:agri_app_2/widget/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});

  final Category category;

  @override
  Widget build(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(100, 10)),
        ),
        child: Text(
          category.title,
          style: TextStyle(
              color: themeProvider.getTheme == darkTheme
                  ? Colors.white
                  : const Color.fromARGB(255, 103, 103, 103)),
        ));
  }
}
