import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpTypeOne extends StatelessWidget {
  const SignUpTypeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 5,
                child: ListView(
                  padding: EdgeInsets.all(24.0),
                  children: [
                    ContraText(
                      text: "Sign Up",
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 21),
                    Text(
                      "You have chance to create new account if you really want to.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 21,
                        color: trout,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ContraInputText(
                      hintText: "Full name",
                      prefixIcon: SvgPicture.asset('../assets/icons/user.svg'),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    ContraInputText(
                      hintText: "Email address",
                      prefixIcon: SvgPicture.asset('../assets/icons/mail.svg'),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    ContraInputText(
                      hintText: "..........",
                      prefixIcon: SvgPicture.asset('../assets/icons/lock.svg'),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    ContraIconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      label: 'Sign up',
                      isShadow: true,

                      shadowColor: wood_smoke,
                      bordercolor: wood_smoke,
                      onPrimaryColor: wood_smoke,
                      primaryColor: lightening_yellow,

                    ),
                    SizedBox(height: 36,),
                    ContraRichText(
                      firstText: 'Already have an account? ',
                      secondText: 'Login here!',
                    )
                  ],
                ),
              )
            ],
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
          )
        ],
      ),
    );
  }
}
