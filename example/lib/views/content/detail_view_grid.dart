import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailViewGrid extends StatefulWidget {
  const DetailViewGrid({Key? key}) : super(key: key);

  @override
  _DetailViewGridState createState() => _DetailViewGridState();
}

class _DetailViewGridState extends State<DetailViewGrid> {
  List<Color> bgs = [];

  @override
  void initState() {
    super.initState();
    bgs.add(ContraColor.flamingo);
    bgs.add(ContraColor.lightening_yellow);
    bgs.add(ContraColor.pastel_pink);
    bgs.add(ContraColor.caribbean_color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ContraAppBar(
                  height: 80,
                  title: Row(
                    children: [],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ContraText(
                    text: 'SIMPLE TAG',
                    textColor: ContraColor.trout,
                    alignment: Alignment.center,
                    textAlign: TextAlign.center,
                    fontSize: 21,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: ContraText(
                    fontSize: 36,
                    text: 'Contra wireframe kit dude, yeah!',
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                  ),
                ),
                GridView.builder(
                  padding: EdgeInsets.all(24),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: (1 / 1),
                  ),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Center(
                        child: SvgPicture.asset(
                          '../assets/icons/placeholder_icon.svg',
                        ),
                      ),
                      decoration: ShapeDecoration(
                        color: bgs[index],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: ContraButton(
                    text: 'Let\'s get it done',
                    height: 60,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 56,
            child: ContraIconCircleButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('../assets/icons/close.svg'),
              size: 48,
            ),
          )
        ],
      ),
    );
  }
}
