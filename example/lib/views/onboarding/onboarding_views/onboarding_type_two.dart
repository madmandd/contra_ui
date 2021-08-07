import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/onboarding/onboarding_model.dart';
import 'package:example/views/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingTypeTwo extends StatelessWidget {
  final OnboardData data;

  const OnboardingTypeTwo({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ContraColor.white,
      child: Container(
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
                        width: 310,
                        height: 370,
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
                      bottom: 12.0,
                    ),
                    child: Text(
                      data.title!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 21,
                        color: ContraColor.wood_smoke,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 12.0,
                      bottom: 12.0,
                    ),
                    child: Text(
                      data.description!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 21,
                        color: ContraColor.trout,
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
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingViewTypeTwo extends StatefulWidget {
  const OnboardingViewTypeTwo({Key? key}) : super(key: key);

  @override
  _OnboardingViewTypeTwoState createState() => _OnboardingViewTypeTwoState();
}

class _OnboardingViewTypeTwoState extends State<OnboardingViewTypeTwo> {
  PageController _pageController = PageController();
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;
  OnboardingTypeTwo? onboardingTypeTwo;

  final List<Widget> introWidgetsList = [
    OnboardingTypeTwo(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_one.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeTwo(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_two.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeTwo(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_three.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void animatePage(int page) {
    print('page is $page');
    currentPageValue = page;

    if (currentPageValue == 0) {
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
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        PageView.builder(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          itemCount: introWidgetsList.length,
          itemBuilder: (context, index) {
            return introWidgetsList[index];
          },
          onPageChanged: (int page) {
            animatePage(page);
          },
        ),
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              padding: EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < introWidgetsList.length; i++)
                        if (i == currentPageValue) ...[
                          ContraCircleDot(
                            isActive: true,
                            color: ContraColor.flamingo,
                            borderColor: ContraColor.flamingo,
                          )
                        ] else
                          ContraCircleDot(
                            isActive: false,
                            borderColor: ContraColor.wood_smoke,
                          ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_pageController.hasClients) {
                        if (currentPageValue < 2) {
                          _pageController.animateToPage(
                            currentPageValue + 1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  WelcomeScreen()));
                        }
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WelcomeScreen()));
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: ShapeDecoration(
                        color: ContraColor.lightening_yellow,
                        shape: CircleBorder(
                          side: BorderSide(
                              width: 2.0, color: ContraColor.wood_smoke),
                        ),
                        shadows: [
                          BoxShadow(
                              color: ContraColor.wood_smoke,
                              offset: Offset(0.0, 4.0)),
                        ],
                      ),
                      
                      child:
                          SvgPicture.asset('../assets/icons/arrow_forward.svg', ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
