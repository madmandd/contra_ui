import 'package:example/views/payment/payment_card.dart';
import 'package:example/views/payment/payment_type.dart';
import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentViewTypeThree extends StatefulWidget {
  const PaymentViewTypeThree({Key? key}) : super(key: key);

  @override
  _PaymentViewTypeThreeState createState() => _PaymentViewTypeThreeState();
}

class _PaymentViewTypeThreeState extends State<PaymentViewTypeThree>
    with SingleTickerProviderStateMixin {
  List<CardDetail> list = [];
  AnimationController? _animationController;
  PageController? _pageController;
  bool isVertical = true;
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    list.add(CardDetail(
        type: 'Credit Card',
        number: '8765 7875 6759 4344',
        username: 'Karthi',
        color: ContraColor.blue));
    list.add(CardDetail(
        type: 'Credit Card',
        number: '8765 7875 6759 4344',
        username: 'Karthi',
        color: ContraColor.black));
    list.add(CardDetail(
        type: 'Credit Card',
        number: '8765 7875 6759 4344',
        username: 'Karthi',
        color: ContraColor.lightening_yellow));
    list.add(CardDetail(
        type: 'Credit Card',
        number: '8765 7875 6759 4344',
        username: 'Karthi',
        color: ContraColor.flamingo));

    _animationController = AnimationController(
      reverseDuration: Duration(milliseconds: 300),
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  void onChecked(bool val) {
    setState(() {
      isChecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        toolbarHeight: 200,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Container(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Text(
                    'SAVED',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w800,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = ContraColor.wood_smoke,
                    ),
                  ),
                  Text(
                    'SAVED',
                    style: TextStyle(
                      fontSize: 44,
                      color: ContraColor.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              ContraText(
                fontSize: 44,
                text: 'PAYMENT',
                alignment: Alignment.centerLeft,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24.0),
              margin: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              decoration: ShapeDecoration(
                  color: ContraColor.athens,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 21,
                          color: ContraColor.wood_smoke,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ContraText(
                        alignment: Alignment.centerLeft,
                        text: '\$' + '5,666',
                      ),
                    ],
                  ),
                  ContraIconCircleButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: SvgPicture.asset('../assets/icons/ic_add.svg'),
                  ),
                ],
              ),
            ),
            isVertical
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    reverse: false,
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentCard(
                        card: list[index],
                        isVertical: isVertical,
                        color: ContraColor.wood_smoke,
                      );
                    },
                  )
                : Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: PageView.builder(
                      controller: _pageController,
                      dragStartBehavior: DragStartBehavior.start,
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PaymentCard(
                          card: list[index],
                          isVertical: isVertical,
                          color: ContraColor.white,
                        );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
