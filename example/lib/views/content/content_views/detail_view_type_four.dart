import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailViewTypeFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContraAppBar(
                height: 110,
                title: Row(
                  children: [],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ContraText(
                  text: 'SIMPLE TAG',
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w800,
                  textColor: ContraColor.trout,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ContraText(
                  text: 'Contra wireframe kit dude, yeah!',
                  fontSize: 36,
                  textColor: ContraColor.wood_smoke,
                  fontWeight: FontWeight.w800,
                  textAlign: TextAlign.center,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ContraText(
                  text:
                      "Wireframe is still important for ideation. It will help you to quickly test idea.",
                  fontSize: 17,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                  textColor: ContraColor.trout,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ContraButton(
                  text: 'Let\'s go',
                  width: 200,
                  height: 60,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "../assets/images/peep_lady_left.svg",
                width: 220,
                height: 300,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                '../assets/images/peep_man_right.svg',
                width: 260,
                height: 300,
              ),
            ],
          ),
          Positioned(
            left: 24,
            top: 56,
            child: ContraIconCircleButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                '../assets/icons/arrow_back.svg',
              ),
              size: 48,
            ),
          )
        ],
      ),
    );
  }
}
