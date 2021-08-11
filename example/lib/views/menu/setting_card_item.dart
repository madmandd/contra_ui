import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

class SettingsCardItem extends StatefulWidget {
  final Settings settings;

  const SettingsCardItem({Key? key, required this.settings}) : super(key: key);

  @override
  _SettingsCardItemState createState() => _SettingsCardItemState();
}

class _SettingsCardItemState extends State<SettingsCardItem> {
  String? title;
  String? text;
  bool? enable;
  Color? backgroundColor;
  Color? textColor;

  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    isChanged = widget.settings.enable;
    title = widget.settings.title;
    text = widget.settings.text;
    enable = widget.settings.enable;
    backgroundColor = widget.settings.backgroundColor;
    textColor = widget.settings.textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(color: ContraColor.wood_smoke, width: 2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContraText(
            text: title!,
            fontSize: 27,
            alignment: Alignment.centerLeft,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 8.0,
          ),
          ContraText(
            text: text!,
            textColor: textColor,
            fontSize: 15,
            alignment: Alignment.centerLeft,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 8,
          ),
          Switch(
            value: isChanged,
            onChanged: onChanged,
            activeTrackColor: ContraColor.lightening_yellow,
            inactiveTrackColor: ContraColor.santas_gray,
            inactiveThumbColor: ContraColor.white,
          ),
        ],
      ),
    );
  }
}
