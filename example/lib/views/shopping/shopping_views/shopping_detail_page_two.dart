import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingDetailPageTwo extends StatefulWidget {
  const ShoppingDetailPageTwo({Key? key}) : super(key: key);

  @override
  _ShoppingDetailPageTwoState createState() => _ShoppingDetailPageTwoState();
}

class _ShoppingDetailPageTwoState extends State<ShoppingDetailPageTwo> {
  List<String> _filters = [];
  List<String> _images = [];
  List<Color> _colors = [];

  @override
  void initState() {
    super.initState();
    _filters.add("XS");
    _filters.add("S");
    _filters.add("M");
    _filters.add("L");
    _images.add("../assets/images/shopping/coat_fur.svg");
    _images.add("../assets/images/shopping/striped_tee.svg");
    _images.add("../assets/images/shopping/shirt_and_coat.svg");
    _colors.add(ContraColor.lightening_yellow);
    _colors.add(Colors.red);
    _colors.add(ContraColor.caribbean_color);
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: ContraColor.flamingo,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: kToolbarHeight + statusBarHeight,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: PagerImageView(
                    images: _images,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.topCenter,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Flash T-Shirt',
                          style: TextStyle(
                            color: ContraColor.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Wireframe is still important for ideation. It will help you to quickly test idea.",
                        style: TextStyle(
                          color: ContraColor.athen_gray,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizeSelectWidget(
                          filters: _filters,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(

                        children: [
                           Expanded(
                            flex: 1,
                            child: Text(
                              "\$" "565",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: ContraColor.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          ContraIconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            width: 200,
                            label: 'Buy Now',
                            isSuffixIcon: true,
                            icon: SvgPicture.asset(
                              '../assets/icons/arrow_next.svg',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              
            ],
          ),
          Positioned(
            left: 24,
            top: kToolbarHeight + statusBarHeight,
            child: ContraIconCircleButton(
              size: 48,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset(
                '../assets/icons/arrow_back.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PagerImageView extends StatefulWidget {
  final List<String> images;

  const PagerImageView({Key? key, required this.images}) : super(key: key);

  @override
  _PagerImageViewState createState() => _PagerImageViewState();
}

class _PagerImageViewState extends State<PagerImageView> {
  PageController _pageController = PageController();
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;
  List<String> _images = [];
  final List<Widget> _cards = [];

  @override
  void initState() {
    _images = widget.images;
    _cards.add(SvgPicture.asset(
      _images[0],
      height: 290,
      width: 300,
    ));
    _cards.add(SvgPicture.asset(
      _images[1],
      height: 290,
      width: 300,
    ));
    _cards.add(SvgPicture.asset(
      _images[2],
      height: 290,
      width: 300,
    ));
    super.initState();
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: PageView.builder(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return _cards[index];
            },
            onPageChanged: (int page) {
              animatePage(page);
            },
            itemCount: _cards.length,
            controller: _pageController,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < _cards.length; i++)
              if (i == currentPageValue) ...[
                ContraCircleDot(
                  isActive: true,
                  color: ContraColor.white,
                  borderColor: ContraColor.white,
                )
              ] else
                ContraCircleDot(
                  isActive: false,
                  color: ContraColor.flamingo,
                  borderColor: ContraColor.wood_smoke,
                )
          ],
        )
      ],
    );
  }

  void animatePage(int page) {
    print('image is $page');
    currentPageValue = page;
    if (previousPageValue == 0) {
      previousPageValue = currentPageValue;
      _moveBar += 0.14;
    } else {
      if (previousPageValue < currentPageValue) {
        previousPageValue = currentPageValue;
        _moveBar += 0.14;
      } else {
        previousPageValue = currentPageValue;
        _moveBar -= 0.14;
      }
    }

    setState(() {});
  }
}

class SizeSelectWidget extends StatefulWidget {
  final List<String> filters;
  const SizeSelectWidget({Key? key, required this.filters}) : super(key: key);

  @override
  _SizeSelectWidgetState createState() => _SizeSelectWidgetState();
}

class _SizeSelectWidgetState extends State<SizeSelectWidget> {
  List<String> options = [];
  List<int> selectedChoices = [];

  @override
  void initState() {
    super.initState();
    options = widget.filters;
    selectedChoices.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Wrap(
        spacing: 12,
        children: List<Widget>.generate(options.length, (index) {
          return SizeWidget(
            borderColor: ContraColor.wood_smoke,
            shadowColor: ContraColor.wood_smoke,
            text: options[index],
            selected: selectedChoices.contains(index),
            onPressed: () {
              setState(() {
                selectedChoices.contains(index)
                    ? selectedChoices.remove(index)
                    : selectedChoices.add(index);
              });
            },
          );
        }),
      ),
    );
  }
}

class SizeWidget extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final bool selected;
  final String text;
  final VoidCallback onPressed;

  const SizeWidget(
      {required this.borderColor,
      required this.shadowColor,
      required this.selected,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: 48,
        decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: shadowColor,
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  selected ? 4.0 : 0.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            color: selected ? ContraColor.lightening_yellow : ContraColor.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                side: BorderSide(color: borderColor, width: 2))),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: ContraColor.wood_smoke),
          ),
        ),
      ),
    );
  }
}
