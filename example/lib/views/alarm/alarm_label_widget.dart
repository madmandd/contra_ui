import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/alarm/alarm_model.dart';
import 'package:flutter/material.dart';

class AlarmLabelWidget extends StatelessWidget {
  final Alarmlabel label;
  final VoidCallback onTap;

  const AlarmLabelWidget({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContraText(
              text: label.title,
              alignment: Alignment.centerLeft,
              textColor: ContraColor.wood_smoke,
              fontSize: 21,
            ),
            label.selected
                ? ContraText(
                    text: label.selectedText,
                    alignment: Alignment.centerLeft,
                    fontSize: 17,
                  )
                : Icon(
                    Icons.arrow_forward_ios,
                    color: ContraColor.wood_smoke,
                  )
          ],
        ),
      ),
    );
  }
}
