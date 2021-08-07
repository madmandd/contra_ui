import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationType extends StatelessWidget {
  const VerificationType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: ContraColor.lightening_yellow,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: ContraColor.lightening_yellow,
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    '../assets/images/peep_verify.svg',
                    height: 276,
                    width: 254,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(24.0),
                  color: ContraColor.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PinInputText(
                            onChanged: (String? text) {
                              if (text!.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          PinInputText(
                            onChanged: (String? text) {
                              if (text!.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          PinInputText(
                            onChanged: (String? text) {
                              if (text!.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                          PinInputText(
                            onChanged: (String? text) {
                              if (text!.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ContraRichText(
                        firstText: 'Didn\'t get fav number? ',
                        secondText: "Get new!",
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ContraIconButton(
                        onPressed: () {},
                        label: 'Verify',
                        icon: SvgPicture.asset(
                          '../assets/icons/arrow_forward.svg',
                          color: ContraColor.white,
                          width: 21,
                          height: 21,
                        ),
                        isPrefixIcon: true,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 24,
            top: 70,
            child: Row(
              children: [
                ContraIconCircleButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset(
                    '../assets/icons/arrow_back.svg',
                  ),
                  size: 48,
                ),
                SizedBox(width: 16),
                Text(
                  'One Time Pass',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.w800,
                    color: ContraColor.wood_smoke,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
