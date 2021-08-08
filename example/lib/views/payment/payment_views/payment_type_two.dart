import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/payment/payment_card_item_big.dart';
import 'package:example/views/payment/payment_type.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentViewTypeTwo extends StatefulWidget {
  const PaymentViewTypeTwo({Key? key}) : super(key: key);

  @override
  _PaymentViewTypeTwoState createState() => _PaymentViewTypeTwoState();
}

class _PaymentViewTypeTwoState extends State<PaymentViewTypeTwo>
    with SingleTickerProviderStateMixin {
  List<PaymentType> types = [];
  List<String> list = [];
  bool isVertical = true;
  bool isChecked = false;

  AnimationController? _animationController;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();

    list.add("Get 24x7 Support");
    list.add("120+ Screens");
    list.add("120+ Screens");
    types.add(
      PaymentType(
          type: "POPULAR",
          list: list,
          color: ContraColor.flamingo,
          primaryColor: ContraColor.wood_smoke,
          onPrimaryColor: ContraColor.white,
          price: '34'),
    );
    types.add(PaymentType(
        price: "34",
        type: "TRENDING",
        list: list,
        color: ContraColor.lightening_yellow,
        primaryColor: ContraColor.wood_smoke,
        onPrimaryColor: ContraColor.white));
    types.add(PaymentType(
        price: "25",
        type: "POPULAR",
        list: list,
        color: ContraColor.black,
        primaryColor: ContraColor.white,
        onPrimaryColor: ContraColor.white));
    types.add(PaymentType(
      price: "34",
      type: "CLASSIC",
      list: list,
      color: ContraColor.flamingo,
      primaryColor: ContraColor.wood_smoke,
      onPrimaryColor: ContraColor.white,
    ));

    _animationController = AnimationController(
      reverseDuration: Duration(milliseconds: 300),
      duration: const Duration(milliseconds: 200),
      vsync: this,
    )..addStatusListener((status) {
        print(status);
      });

    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  void onChecked(bool? val) {
    setState(() {
      isChecked = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        toolbarHeight: 120,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: ContraIconCircleButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                size: 48,
                icon: SvgPicture.asset(
                  '../assets/icons/arrow_back.svg',
                ),
              ),
            ),
            SizedBox(width: 48,),
            Expanded(
              flex: 4,
              child: ContraText(
                alignment: Alignment.topLeft,
                text: 'Payments',
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: AnimatedIcon(
                  icon: AnimatedIcons.view_list,
                  progress: _animationController!,
                  color: ContraColor.black,
                ),
                onPressed: () {
                  setState(() {
                    isVertical
                        ? _animationController!.forward()
                        : _animationController!.reverse();

                        isVertical = !isVertical;
                  });
                },
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            isVertical
                ? ListView.builder(
                    padding: EdgeInsets.only(top: 12.0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    itemCount: types.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentCardItemBig(
                        type: types[index],
                        isVertical: true,
                      );
                    },
                  )
                : Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: PageView.builder(
                      controller: _pageController,
                      dragStartBehavior: DragStartBehavior.start,
                      scrollDirection: Axis.horizontal,
                      itemCount: types.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PaymentCardItemBig(
                          type: types[index],
                          isVertical: false,
                        );
                      },
                    ),
                  ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: onChecked,
                  ),
                  Expanded(
                    child: Text(
                        'I read. Please read following terms and condition if you want to go further. Otherwise we will not give you any refund.'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: ContraIconButton(
                onPressed: () {},
                label: 'Subscribe Now',
                isShadow: true,
                shadowColor: ContraColor.persian_blue,
                bordercolor: ContraColor.persian_blue,
                onPrimaryColor: ContraColor.white,
                primaryColor: ContraColor.persian_blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
