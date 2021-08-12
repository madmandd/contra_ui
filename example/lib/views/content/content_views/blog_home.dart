import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlogHomeView extends StatefulWidget {
  const BlogHomeView({Key? key}) : super(key: key);

  @override
  _BlogHomeViewState createState() => _BlogHomeViewState();
}

class _BlogHomeViewState extends State<BlogHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 100,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.menu,
                    color: ContraColor.wood_smoke,
                  ),
                  Expanded(
                    child: ContraText(
                      text: 'contra',
                      alignment: Alignment.bottomCenter,
                      fontSize: 27,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: ContraText(
              text: 'Work with best designers',
              fontSize: 36,
              textAlign: TextAlign.center,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ContraText(
              text:
                  'Wireframe is still important for ideation. It will help you to quickly test idea.',
              fontSize: 21,
              alignment: Alignment.center,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ContraButton(
              width: 200,
              height: 50,
              fontSize: 17,
              onPressed: () {},
              text: 'More',
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      '../assets/images/onboarding_image_five.svg',
                      height: 320,
                      width: 320,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
