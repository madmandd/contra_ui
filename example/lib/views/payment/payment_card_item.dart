import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

class PaymentCardItem extends StatelessWidget {
  final Color primaryColor;
  final String price;
  final String type;

  const PaymentCardItem(
      {Key? key,
      required this.primaryColor,
      required this.price,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: primaryColor,
        shadows: [
          BoxShadow(color: ContraColor.wood_smoke, offset: Offset(0.0, 4.0))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(width: 2, color: ContraColor.wood_smoke),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ContraText(
              alignment: Alignment.center,
              text: price,
              fontSize: 44,
            ),
            Text(
              type,
              style: TextStyle(
                color: ContraColor.wood_smoke,
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
