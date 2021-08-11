import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

class MenuViewOne extends StatelessWidget {
  const MenuViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.close,
                  color: ContraColor.black,
                  size: 32,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ContraText(
                alignment: Alignment.bottomCenter,
                text: 'Settings',
                fontSize: 24,
              ),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ContraText(
                    text: 'Home',
                    fontSize: 44,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ContraText(
                    text: 'Profile',
                    textColor: ContraColor.flamingo,
                    fontSize: 44,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ContraText(
                    text: 'History',
                    fontSize: 44,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ContraText(
                    text: 'Settings',
                    fontSize: 44,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ContraText(
                    text: 'About',
                    fontSize: 44,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ContraText(
                  text: 'contra',
                  fontSize: 21,
                ),
                ContraText(
                  text: '1.0',
                  fontSize: 21,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
