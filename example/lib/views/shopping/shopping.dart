import 'package:flutter/material.dart';

class Category {
  final String name;
  final Color backgroundColor;
  final Color startColor;

  const Category(
      {required this.name,
      required this.backgroundColor,
      required this.startColor});
}

class CategoryBig {
  final String name;
  final String image;
  final Color backgroundColor;
  final Color startColor;

  const CategoryBig({
    required this.name,
    required this.image,
    required this.backgroundColor,
    required this.startColor,
  });
}

class ShopItem {
  final String name;
  final String price;
  final String by;
  final String image;
  final Color backgroundColor;

  const ShopItem(
      {required this.name,
      required this.price,
      required this.by,
      required this.image,
      required this.backgroundColor});
}
