import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/onboarding/onboarding_model.dart';
import 'package:example/views/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingViewTypeThree extends StatefulWidget {
  const OnboardingViewTypeThree({Key? key}) : super(key: key);

  @override
  _OnboardingViewTypeThreeState createState() =>
      _OnboardingViewTypeThreeState();
}

class _OnboardingViewTypeThreeState extends State<OnboardingViewTypeThree> {
  PageController _pageController = PageController();
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;

  OnboardingTypeThree? onboardingTypeThree;

  final List<Widget> introWidgetsList = [
    OnboardingTypeThree(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_one.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeThree(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_two.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeThree(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_three.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    )
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: currentPageValue);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void animatePage(int page) {
    print('page is $page');

    currentPageValue = page;

    if (previousPageValue == 0) {
      previousPageValue = currentPageValue;
      _moveBar = _moveBar + 0.14;
    } else {
      if (previousPageValue < currentPageValue) {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar + 0.14;
      } else {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar - 0.14;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        PageView.builder(
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return introWidgetsList[index];
          },
          onPageChanged: (int page) {
            animatePage(page);
          },
          itemCount: introWidgetsList.length,
          controller: _pageController,
        ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < introWidgetsList.length; i++)
                          if (i == currentPageValue) ...[
                            ContraCircleDot(
                              isActive: true,
                              color: ContraColor.white,
                              borderColor: ContraColor.white,
                            ),
                          ] else
                            ContraCircleDot(
                              isActive: false,
                              color: ContraColor.flamingo,
                              borderColor: ContraColor.white,
                            ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: ContraIconButton(
                      height: 56,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WelcomeScreen()));
                      },
                      label: 'Get Started',
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class OnboardingTypeThree extends StatelessWidget {
  final OnboardData data;

  const OnboardingTypeThree({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: ContraColor.flamingo,
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
                        data.placeholder!,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 12.0,
                      bottom: 12.0,
                    ),
                    child: Text(
                      data.title!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21,
                        color: ContraColor.athen_gray,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      data.description!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21,
                        color: ContraColor.athen_gray,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
