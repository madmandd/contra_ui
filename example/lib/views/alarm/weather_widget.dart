import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'alarm_model.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherDate date;
  const WeatherWidget({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ContraText(
            text: date.day,
            fontSize: 13,
          ),
          SizedBox(height: 10,),
          SvgPicture.asset(date.image, width: 32, height: 32,)
        ],
      ),
    );
  }
}
