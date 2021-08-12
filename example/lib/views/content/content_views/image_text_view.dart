import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/image_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageTextViewer extends StatefulWidget {
  const ImageTextViewer({Key? key}) : super(key: key);

  @override
  _ImageTextViewerState createState() => _ImageTextViewerState();
}

class _ImageTextViewerState extends State<ImageTextViewer> {
  PageController? _pageController;
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;
  final List<Widget> introWidgetList = [];

  @override
  void initState() {
    super.initState();
    introWidgetList
        .add(ImageTextView(image: '../assets/images/peep_standing_right.svg'));
    introWidgetList
        .add(ImageTextView(image: '../assets/images/peep_standing_center.svg'));
    introWidgetList
        .add(ImageTextView(image: '../assets/images/peep_standing_left.svg'));
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController!.dispose();
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
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  itemCount: introWidgetList.length,
                  physics: ClampingScrollPhysics(),
                  onPageChanged: (int page) {
                    animatePage(page);
                  },
                  itemBuilder: (context, index) {
                    return introWidgetList[index];
                  },
                  controller: _pageController,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < introWidgetList.length; i++)
                              if (i == currentPageValue) ...[
                                ContraCircleDot(
                                  isActive: true,
                                  color: ContraColor.flamingo,
                                  borderColor: ContraColor.white,
                                )
                              ] else
                                ContraCircleDot(
                                  isActive: false,
                                  color: ContraColor.white,
                                  borderColor: ContraColor.black,
                                )
                          ],
                        ),
                      ),
                      ContraText(
                        text: 'Contra UIKit',
                        fontSize: 36,
                        alignment: Alignment.center,
                        textAlign: TextAlign.center,
                      ),
                      ContraText(
                        text:
                            'Wireframe is still important for ideation. It will help you to quickly test idea.',
                        textColor: ContraColor.trout,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                        fontSize: 21,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 24,
            top: 56,
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
