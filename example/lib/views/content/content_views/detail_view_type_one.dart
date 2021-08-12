import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DetailViewTypeOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  color: ContraColor.flamingo,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                          '../assets/images/shopping/peep_both.svg'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      ContraText(
                        text: 'Chit chat ho jaye',
                        textColor: ContraColor.trout,
                        fontSize: 17,
                        alignment: Alignment.center,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ContraText(
                        text: 'It\'s very easy to do whatever you want to do',
                        alignment: Alignment.center,
                        textAlign: TextAlign.center,
                        fontSize: 36,
                      ),
                      SizedBox(height: 10),
                      ContraText(
                        alignment: Alignment.center,
                        textAlign: TextAlign.center,
                        text:
                            'This title may have some detailed descriptions which can go here. But part of this text box is always secured.',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ContraButton(
                        onPressed: () {},
                        text: 'Confirm',
                        primaryColor: ContraColor.persian_blue,
                        onPrimaryColor: ContraColor.white,
                        fontSize: 21,
                        height: 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 56,
            left: 24,
            child: ContraIconCircleButton(
              size: 48,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('../assets/icons/arrow_back.svg'),
            ),
          )
        ],
      ),
    );
  }
}
