import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTypeOne extends StatelessWidget {
  const LoginTypeOne({Key? key}) : super(key: key);

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
                  child: Container(),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        '../assets/icons/logo_mark.svg',
                        height: 120,
                        width: 120,
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                SizedBox(
                  height: 24.0,
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
                        height: 24.0,
                      ),
                      ContraInputText(
                          hintText: 'Email address',
                          prefixIcon: SvgPicture.asset(
                            '../assets/icons/user.svg',
                            height: 24,
                            width: 24,
                          )),
                      SizedBox(
                        height: 24.0,
                      ),
                      ContraInputText(
                        hintText: '\u25CF \u25CF \u25CF \u25CF \u25CF \u25CF',
                        obscureText: true,
                        prefixIcon: SvgPicture.asset(
                          '../assets/icons/lock.svg',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ContraIconButton(
                        label: 'Sign in',
                        isPrefixIcon: true,
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            '../assets/icons/arrow_next.svg',
                            color: ContraColor.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ContraRichText(
                        firstText: 'Are you new? ',
                        secondText: 'Create new account now!',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 80,
            child: ContraIconCircleButton(
              size: 48,
              backgroundColor: ContraColor.white,
              icon: SvgPicture.asset(
                '../assets/icons/close.svg',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
