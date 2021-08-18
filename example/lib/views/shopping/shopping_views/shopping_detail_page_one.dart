import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/shopping/shopping_views/shopping_detail_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingDetailPageOne extends StatefulWidget {
  const ShoppingDetailPageOne({Key? key}) : super(key: key);

  @override
  _ShoppingDetailPageOneState createState() => _ShoppingDetailPageOneState();
}

class _ShoppingDetailPageOneState extends State<ShoppingDetailPageOne> {
  List<String> _filters = [];
  List<String> _images = [];
  List<Color> _colors = [];

  @override
  void initState() {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusHeightBar = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: ContraColor.flamingo,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: kToolbarHeight + statusHeightBar,
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
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Flash T-Shirts",
                          style: TextStyle(
                              color: ContraColor.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Wireframe is still important for ideation. It will help you to quickly test idea.",
                        style: TextStyle(
                          fontSize: 17,
                          color: ContraColor.athen_gray,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizeSelectWidget(filters: _filters),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "\$" + "565",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ContraColor.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        ContraIconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          width: 200,
                          label: 'Buy now',
                          isSuffixIcon: true,
                          icon: SvgPicture.asset(
                              '../assets/icons/arrow_next.svg'),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          Positioned(
            left: 24,
            top: kToolbarHeight + statusHeightBar,
            child: ContraIconCircleButton(
                size: 48,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset('../assets/icons/arrow_back.svg')),
          )
        ],
      ),
    );
  }
}
