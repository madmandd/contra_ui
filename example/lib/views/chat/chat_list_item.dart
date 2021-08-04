import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'message_model.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({Key? key, this.chat, this.onPressed}) : super(key: key);

  final Chat? chat;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ContraTextImage(
                size: 48,
                text: chat!.name.substring(0, 1),
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat!.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 21,
                        color: wood_smoke,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    chat!.message,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: trout,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chat!.time,
                    style: TextStyle(
                      fontSize: 11,
                      color: santas_gray_10,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  chat!.count.isNotEmpty ? ContraBadge(text: chat!.count, ) : SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
