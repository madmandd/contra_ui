import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/payment/payment_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentViewTypeOne extends StatefulWidget {
  const PaymentViewTypeOne({Key? key}) : super(key: key);

  @override
  _PaymentViewTypeOneState createState() => _PaymentViewTypeOneState();
}

class _PaymentViewTypeOneState extends State<PaymentViewTypeOne> {
  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContraColor.white,
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        toolbarHeight: 120,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            ContraIconCircleButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              size: 48,
              icon: SvgPicture.asset(
                '../assets/icons/arrow_back.svg',
              ),
            ),
            SizedBox(width: 48,),
            ContraText(
              alignment: Alignment.topLeft,
              text: 'Payments',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              PaymentCardItem(
                  primaryColor: ContraColor.lightening_yellow,
                  price: '\$' + '54',
                  type: 'per month'),
              PaymentCardItem(
                  primaryColor: ContraColor.white,
                  price: '\$' + '128',
                  type: 'per month'),
              PaymentCardItem(
                  primaryColor: ContraColor.lightening_yellow,
                  price: '\$' + '354',
                  type: 'per month'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                padding: EdgeInsets.all(24.0),
                decoration: ShapeDecoration(
                  color: ContraColor.bareley_white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContraText(
                      alignment: Alignment.centerLeft,
                      fontSize: 21,
                      text: 'Auto Renew',
                    ),
                    Switch(
                      value: isChanged,
                      onChanged: onChanged,
                      activeColor: ContraColor.lightening_yellow,
                      inactiveTrackColor: ContraColor.selago,
                      inactiveThumbColor: ContraColor.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: ContraIconButton(
                  label: 'Subscribe Now',
                  height: 48,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
