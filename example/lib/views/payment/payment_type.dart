import 'package:flutter/material.dart';

class PaymentType {
  final String type;
  final String price;
  final Color color;
  final Color primaryColor;
  final Color onPrimaryColor;
  final List<String> list;

  const PaymentType(
      {required this.type,
      required this.price,
      required this.color,
      required this.primaryColor,
      required this.onPrimaryColor,
      required this.list});
}

class CardDetail {
  final String type;
  final String number;
  final String username;
  final Color color;

  const CardDetail(
      {required this.type,
      required this.number,
      required this.username,
      required this.color});
}
