import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/payment/payment_type.dart';
import 'package:flutter/material.dart';

class PaymentCardItemBig extends StatelessWidget {
  final PaymentType type;
  final bool? isVertical;

  const PaymentCardItemBig(
      {Key? key, required this.type, this.isVertical = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isVertical! ? MediaQuery.of(context).size.width : 250,
      margin: isVertical!
          ? EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0)
          : EdgeInsets.only(right: 12.0, top: 24.0, bottom: 12.0),
      padding: EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: type.color,
        shadows: [
          BoxShadow(
            color: ContraColor.wood_smoke,
            offset: Offset(
              0.0,
              4.0,
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(color: ContraColor.wood_smoke, width: 2.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            type.type,
            style: TextStyle(
              color: ContraColor.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            type.price != null ? "\$" + type.price : "FREE",
            style: TextStyle(
              color: ContraColor.white,
              fontSize: 44,
              fontWeight: FontWeight.w800,
            ),
          ),
          isVertical!
              ? ContraListItem(
                  list: type.list,
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    "You don't think you should give me some dollar to use our service",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ContraColor.white,
                      fontSize: 17,
                    ),
                  ),
                ),
          ContraIconButton(
            label: 'Select',
            height: 48.0,
            isShadow: true,
            shadowColor: type.primaryColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
            onPrimaryColor: type.onPrimaryColor,
            bordercolor: type.primaryColor,
          )
        ],
      ),
    );
  }
}
