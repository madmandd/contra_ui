import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTypeFour extends StatelessWidget {
  const LoginTypeFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: ContraColor.flamingo,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              '../assets/images/peep_standing_center.svg',
              height: 800,
              width: 180,
            ),
          ),
          Container(
            height: 360,
            alignment: Alignment.bottomCenter,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.0),
                topLeft: Radius.circular(16.0),
              )),
              color: ContraColor.white,
              shadows: [
                BoxShadow(
                  color: ContraColor.wood_smoke,
                  offset: Offset(0.0, -6.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 56,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: ContraColor.wood_smoke,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: SvgPicture.asset(
                              '../assets/icons/close.svg',
                              color: ContraColor.wood_smoke,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: ContraColor.wood_smoke,
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: ContraInputText(
                    hintText: 'Email Address',
                    prefixIcon: SvgPicture.asset('../assets/icons/user.svg'),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: ContraInputText(
                    obscureText: true,
                    hintText: "..........",
                    prefixIcon: SvgPicture.asset('../assets/icons/lock.svg'),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: ContraIconButton(
                    onPressed: () {
                          Navigator.of(context).pop();
                    },
                    label: 'Continue',
                    isPrefixIcon: true,
                    icon: SvgPicture.asset(
                      '../assets/icons/arrow_next.svg',
                      color: ContraColor.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
