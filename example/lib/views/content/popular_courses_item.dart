import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'content.dart';

class PopularCoursesItem extends StatelessWidget {
  final Author author;

  const PopularCoursesItem({Key? key, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: ShapeDecoration(
        color: ContraColor.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              author.path,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  author.name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 21,
                    color: ContraColor.wood_smoke,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  author.designation,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ContraColor.trout,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ContraText(
                  text: '67k',
                  fontSize: 17,
                  textColor: ContraColor.santas_gray_10,
                  alignment: Alignment.center,
                  textAlign: TextAlign.start,
                ),
                ContraText(
                  text: 'followers',
                  fontSize: 17,
                  textColor: ContraColor.santas_gray_10,
                  alignment: Alignment.center,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularCourseAuthorItem extends StatelessWidget {
  const PopularCourseAuthorItem({Key? key, required this.author})
      : super(key: key);
  final AuthorText author;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 144,
            height: 160,
            decoration: ShapeDecoration(
              color: author.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                side: BorderSide(
                  width: 2,
                  color: ContraColor.wood_smoke,
                ),
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                '../assets/icons/placeholder_icon.svg',
                width: 40,
                height: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              author.subject,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ContraColor.wood_smoke,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Text(
              author.hour,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ContraColor.trout,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
