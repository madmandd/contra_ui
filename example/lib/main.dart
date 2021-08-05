
import 'package:flutter/material.dart';
import 'views/chart/line_chart.dart';


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
      home: LineChartView(),
    );
  }
}
