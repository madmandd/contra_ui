import 'package:example/views/onboarding/onboarding_main.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      home: OnboardingMainView(),
    );
  }
}
