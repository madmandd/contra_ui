import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTypeThree extends StatelessWidget {
  const LoginTypeThree({Key? key}) : super(key: key);

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
                  '../assets/images/peep_standing_left.svg',
                  width: 370,
                  height: 590,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "../assets/images/peep_standing_right.svg",
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
                onPressed: () {Navigator.of(context).pop();
                },
                icon: SvgPicture.asset('../assets/icons/close.svg')),
          ),
          Container(
            height: 410,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(24.0),
            padding: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0), color: ContraColor.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ContraText(
                  text: 'Login',
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "You don’t think you should login first and behave like human not robot.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17, color: ContraColor.trout, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                ContraIconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: 'Email',
                  isSuffixIcon: true,
                  icon: SvgPicture.asset(
                    '../assets/icons/mail.svg',
                    color: ContraColor.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ContraIconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: 'Facebook',
                  primaryColor: ContraColor.persian_blue,
                  bordercolor: ContraColor.persian_blue,
                  isSuffixIcon: true,
                  icon: SvgPicture.asset(
                    '../assets/icons/facebook.svg',
                    color: ContraColor.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ContraIconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  primaryColor: ContraColor.carribean_green,
                  bordercolor: ContraColor.carribean_green,
                  label: 'Twitter',
                  isSuffixIcon: true,
                  icon: SvgPicture.asset(
                    '../assets/icons/twitter.svg',
                    color: ContraColor.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
