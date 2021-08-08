import 'dart:math' as math;
import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:example/views/payment/payment_type.dart';
import 'package:flutter_svg/svg.dart';

class PaymentCard extends StatelessWidget {
  final CardDetail card;
  final bool isVertical;
  final Color color;

  const PaymentCard(
      {Key? key,
      required this.card,
      required this.isVertical,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(color: ContraColor.wood_smoke, width: 2),
        ),
        color: card.color,
        shadows: [
          BoxShadow(
            color: ContraColor.wood_smoke,
            offset: Offset(
              0.0,
              4.0,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            card.type,
            style: TextStyle(color: ContraColor.white, fontSize: 21),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  width: 52,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: ContraColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    card.number,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      color: ContraColor.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD HOLDER',
                    style: TextStyle(
                      color: ContraColor.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    card.username,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: ContraColor.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 36.0),
                child: Transform.rotate(
                  angle: math.pi / 2,
                  origin: Offset(0, 0),
                  child: SvgPicture.asset(
                    '../assets/icons/logo_visa.svg',
                    color: color,
                    width: 36,
                    height: 56,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
