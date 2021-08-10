import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

import 'alarm_model.dart';

class ClockListItem extends StatelessWidget {
  final Clock clock;
  const ClockListItem({Key? key, required this.clock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: clock.color,
        shadows: [
          BoxShadow(color: ContraColor.wood_smoke, offset: Offset(0, 2))
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
            children: [
              ContraText(
                text: clock.country,
                fontSize: 27,
                alignment: Alignment.centerLeft,
              ),
              ContraText(
                text: clock.city,
                textColor: ContraColor.trout,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          Row(
            children: [
              ContraText(
                text: clock.time,
                fontSize: 44,
                alignment: Alignment.centerLeft,
              ),
              ContraText(
                text: clock.am_pm,
                fontSize: 15,
                alignment: Alignment.centerLeft,
              )
            ],
          )
        ],
      ),
    );
  }
}
