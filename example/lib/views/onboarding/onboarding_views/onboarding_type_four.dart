import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingViewTypeFour extends StatelessWidget {
  const OnboardingViewTypeFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: ContraColor.white,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        '../assets/images/onboarding_image_four.svg',
                        height: 340,
                        width: 310,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 12.0,
                      bottom: 4.0,
                    ),
                    child: Text(
                      ContraStrings.open_source,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 21,
                        color: ContraColor.santas_gray,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 4.0,
                      bottom: 12.0,
                    ),
                    child: Text(
                      ContraStrings.contra_wireframe_kit_next_line,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w800,
                        color: ContraColor.wood_smoke,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, top: 8.0, right: 24.0),
                    child: ContraIconButton(
                      height: 56,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      label: "Get Started",
                      isPrefixIcon: true,
                      icon: SvgPicture.asset('../assets/icons/arrow_next.svg'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
