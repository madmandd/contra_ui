import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

import 'message_model.dart';

class ChatSearchItem extends StatelessWidget {
  final Chat? chat;
  final Color? borderColor;
  final Color? textColor;
  final Color? backgroundColor;

  const ChatSearchItem(
      {Key? key,
      this.chat,
      this.borderColor,
      this.textColor,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ContraTextImage(
              size: 54,
              text: chat!.name.substring(0, 1),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            flex: 3,
            child: Text(
              chat!.name,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: textColor ?? wood_smoke,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              chat!.time,
              style: TextStyle(
                  fontSize: 12,
                  color: santas_gray_10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
