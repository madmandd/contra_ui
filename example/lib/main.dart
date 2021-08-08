import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/onboarding/onboarding_main.dart';
import 'package:example/views/payment/payment_main.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
        backgroundColor: ContraColor.white,
      ),
      home: PaymentMainView(),
    );
  }
}
