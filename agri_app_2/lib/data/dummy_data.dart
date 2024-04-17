import 'package:agri_app_2/model/color.dart';
import 'package:agri_app_2/model/order_display.dart';
import 'package:flutter/material.dart';
import '../model/category.dart';
import '../model/crop_list.dart';
import '../model/logo.dart';

final availableCategories1 = [
  Category(title: 'Corn'),
  Category(title: 'Wheat'),
  Category(title: 'Rice'),
];
final availableCategories2 = [
  Category(title: 'Barely'),
  Category(title: 'Beans'),
  Category(title: 'More...'),
];

final availableCrops = [
  CropList(image: 'assets/fruits.jpg', price: 'ETB 200'),
  CropList(image: 'assets/fruits.jpg', price: 'ETB 300'),
];

final availableOrders = [
  OrderDisplay(
      image: 'assets/fruits.jpg',
      user: 'Ermiyas Tesfaye',
      title: 'Corn',
      number: 2),
  OrderDisplay(
      image: 'assets/fruits.jpg',
      user: 'Biruk Tesfaye',
      title: 'Rice',
      number: 1),
  OrderDisplay(
      image: 'assets/fruits.jpg',
      user: 'Temsgen Motuma',
      title: 'Wheat',
      number: 3),
  OrderDisplay(
      image: 'assets/fruits.jpg',
      user: 'Noah yehwalashet',
      title: 'Barely',
      number: 4)
];

final myColor = MyColor(
    primary: Colors.grey,
    secondary: const Color.fromARGB(255, 33, 119, 50),
    tertiary: const Color.fromARGB(255, 103, 103, 103));
final logos = [
  Logo(title: 'Crop Management'),
  Logo(title: 'Market Place'),
  Logo(title: 'Order Management'),
];
