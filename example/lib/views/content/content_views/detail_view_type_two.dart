import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailViewTypeTwo extends StatelessWidget {
  const DetailViewTypeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: ContraColor.lightening_yellow,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "../assets/images/peep_standing_left_two.svg",
                  width: 370,
                  height: 590,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "../assets/images/peep_standing_right_two.svg",
                  width: 370,
                  height: 590,
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 56,
            child: ContraIconCircleButton(
              size: 48,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset(
                '../assets/icons/arrow_back.svg',
              ),
            ),
          ),
          Container(
            height: 350,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(24),
            decoration: ShapeDecoration(
              shadows: [
                BoxShadow(
                  offset: Offset(0, 6),
                  color: ContraColor.wood_smoke,
                ),
              ],
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  color: ContraColor.wood_smoke,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              color: ContraColor.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContraText(
                  text: 'Title of the features',
                  alignment: Alignment.center,
                  fontSize: 36,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                ContraText(
                  text:
                      'This title may have some detailed descriptions, which can go here. Some of these text box information is secured.',
                  alignment: Alignment.center,
                  fontSize: 15,
                  textColor: ContraColor.trout,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                ContraIconButton(
                    onPressed: () {},
                    label: 'Confirm',
                    isSuffixIcon: true,
                    isShadow: true,

                    primaryColor: ContraColor.persian_blue,
                    onPrimaryColor: ContraColor.white,
                    height: 60,
                    icon: SvgPicture.asset(
                      '../assets/icons/ic_heart_fill.svg',
                      color: ContraColor.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
