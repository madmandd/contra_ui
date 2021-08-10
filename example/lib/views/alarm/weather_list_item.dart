import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'alarm_model.dart';

class WeatherListItem extends StatelessWidget {
  final Weather weather;
  const WeatherListItem({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: weather.color,
        shadows: [
          BoxShadow(
              color: ContraColor.wood_smoke,
              offset: Offset(
                0.0,
                2.0,
              ))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(color: ContraColor.wood_smoke, width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContraText(
                text: weather.country,
                fontSize: 27,
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  ContraText(
                    text: weather.city + ",",
                    fontSize: 13,
                    alignment: Alignment.centerLeft,
                  ),
                  ContraText(
                    text: weather.time + weather.am_pm,
                    fontSize: 13,
                    alignment: Alignment.centerLeft,
                  ),
                  
                  
                ],
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('../assets/icons/ic_cloud_rain.svg'),
              SizedBox(height: 10.0,),
              ContraText(
                text: weather.degree + "\u00B0",
                fontSize: 44,
                alignment: Alignment.centerLeft,
                
              )
            ],
          )
        ],
      ),
    );
  }
}
