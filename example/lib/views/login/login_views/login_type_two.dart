import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTypeTwo extends StatelessWidget {
  const LoginTypeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: ContraColor.white,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 56,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      ContraText(
                        text: 'Login',
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "You don’t think you should login first and behave like human not robot.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 21,
                          color: ContraColor.trout,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ContraInputText(
                        hintText: 'Email Address',
                        prefixIcon:
                            SvgPicture.asset('../assets/icons/user.svg'),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ContraInputText(
                        hintText: '\u25CF \u25CF \u25CF \u25CF \u25CF \u25CF',
                        prefixIcon:
                            SvgPicture.asset('../assets/icons/lock.svg'),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ContraIconButton(
                        label: 'Sign in',
                        onPressed: () {},
                        shadowColor: ContraColor.wood_smoke,
                        bordercolor: ContraColor.wood_smoke,
                        primaryColor: ContraColor.lightening_yellow,
                        onPrimaryColor: ContraColor.wood_smoke,
                        isShadow: true,
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ContraRichText(
                        firstText: 'You are new? ',
                        secondText: 'Create a new account!',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 80,
            child: ContraIconCircleButton(
              size: 48,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('../assets/icons/close.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
