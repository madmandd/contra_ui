import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/onboarding/onboarding_model.dart';
import 'package:example/views/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingViewTypeOne extends StatefulWidget {
  const OnboardingViewTypeOne({Key? key}) : super(key: key);

  @override
  _OnboardingViewTypeOneState createState() => _OnboardingViewTypeOneState();
}

class _OnboardingViewTypeOneState extends State<OnboardingViewTypeOne> {
  PageController _pageController = PageController();
  int currentPageValue = 0;
  OnboardingTypeOne? onboardingTypeOne;

  final List<Widget> introWidgetList = [
    OnboardingTypeOne(
      data: OnboardData(
        placeholder: '../assets/images/onboarding_image_one.svg',
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeOne(
      data: OnboardData(
        placeholder: "../assets/images/onboarding_image_two.svg",
        title: ContraStrings.contra_wireframe_kit,
        description: ContraStrings.contra_wireframe_kit_page_text,
      ),
    ),
    OnboardingTypeOne(
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return introWidgetList[index];
          },
          onPageChanged: (int page) {
            animatePage(page);
          },
          itemCount: introWidgetList.length,
          controller: _pageController,
        ),
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              padding: EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0, bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: ContraIconButton(
                      isShadow: true,
                      primaryColor: ContraColor.white,
                      onPrimaryColor: ContraColor.black,
                      label: 'Skip',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 1,
                    child: ContraIconButton(
                      onPressed: () {
                        if (_pageController.hasClients) {
                          if (currentPageValue < 2) {
                            _pageController.animateToPage(
                              currentPageValue + 1,
                              duration: const Duration(milliseconds: 400),
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
                      label: 'Next',
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

class OnboardingTypeOne extends StatelessWidget {
  final OnboardData data;
  const OnboardingTypeOne({Key? key, required this.data});

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
                      height: 30.0,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        data.placeholder!,
                        height: 320,
                        width: 320,
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
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      data.title!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        color: ContraColor.wood_smoke,
                        fontWeight: FontWeight.w800,
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
                        color: ContraColor.trout,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
