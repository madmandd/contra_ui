import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

class CircularListItem extends StatelessWidget {
  const CircularListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: new Matrix4.translationValues(-30, -30, 0.0),
      child: Container(
        width: 40.0,
        height: 20.0,
        decoration: ShapeDecoration(
          color: ContraColor.lightening_yellow,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
        ),
      ),
    );
  }
}
