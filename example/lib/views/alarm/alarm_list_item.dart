import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

import 'alarm_model.dart';

class AlarmListItem extends StatefulWidget {
  const AlarmListItem({Key? key, required this.alarm}) : super(key: key);
  final Alarm alarm;

  @override
  _AlarmListItemState createState() => _AlarmListItemState();
}

class _AlarmListItemState extends State<AlarmListItem> {
  List<String> items = [];
  bool isChanged = false;
  @override
  void initState() {
    super.initState();
    items = widget.alarm.datesList;
  }

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChanged);
      },
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContraText(
                  alignment: Alignment.centerLeft,
                  text: '6:30',
                  fontSize: 44,
                  textColor: isChanged
                      ? ContraColor.wood_smoke
                      : ContraColor.santas_gray,
                ),
                ContraText(
                  alignment: Alignment.centerLeft,
                  text: 'AM',
                  fontSize: 44,
                  textColor: isChanged
                      ? ContraColor.wood_smoke
                      : ContraColor.santas_gray,
                ),
                Switch(
                  value: isChanged,
                  onChanged: onChanged,
                  activeColor: ContraColor.lightening_yellow,
                  activeTrackColor: ContraColor.lightening_yellow,
                  inactiveTrackColor: ContraColor.santas_gray,
                  inactiveThumbColor: ContraColor.white,
                ),
              ],
            ),
            Wrap(
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children:
                  List<Widget>.generate(widget.alarm.datesList.length, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    items[index],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: isChanged
                          ? ContraColor.wood_smoke
                          : ContraColor.santas_gray,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
