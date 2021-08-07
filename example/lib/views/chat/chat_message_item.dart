import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

import 'message_model.dart';

class ChatMessageItem extends StatelessWidget {
  final Message? message;
  final Color? borderColor;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? isTimeStampSame;

  const ChatMessageItem({
    Key? key,
    this.isTimeStampSame,
    this.message,
    this.borderColor,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (isTimeStampSame ?? false)
          ? EdgeInsets.symmetric(vertical: 4.0)
          : EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment:
            message!.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          message!.isUser
              ? SizedBox()
              : (isTimeStampSame ?? false)
                  ? SizedBox(
                      width: 48,
                      height: 48,
                    )
                  : Image.asset(
                      '../assets/images/peep_avatar.png',
                      width: 48.0,
                      height: 48.0,
                    ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 1.0),
              padding: EdgeInsets.all(16.0),
              decoration: ShapeDecoration(
                color: message!.isUser ? ContraColor.caribbean_color : ContraColor.lightening_yellow, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  side: BorderSide(
                    width: 2,
                    color: borderColor ?? ContraColor.wood_smoke,
                  ),
                ),
              ),
              child: Text(
                message!.message,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: textColor ?? ContraColor.wood_smoke,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
