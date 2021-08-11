import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'content.dart';

class UserListItem extends StatelessWidget {
  final User user;
  const UserListItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      decoration: ShapeDecoration(
        color: user.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            side: BorderSide(width: 2, color: ContraColor.wood_smoke)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                ContraText(
                  text: user.name,
                  fontSize: 24,
                  alignment: Alignment.centerLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 12,
                ),
                ContraText(
                  text: user.designation,
                  fontSize: 17,
                  alignment: Alignment.centerLeft,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    ContraButton(
                      onPressed: () {},
                      fontSize: 12,
                      height: 50,
                      width: 80,
                      text: 'message',

                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.star_border,
                      color: ContraColor.white,
                    ),
                    ContraText(
                      text: '4.9',
                      fontSize: 17,
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              user.profile,
              width: 210,
              height: 230,
            ),
          )
        ],
      ),
    );
  }
}
