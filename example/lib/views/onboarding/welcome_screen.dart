import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: ContraColor.persian_blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Center(
                    child: SvgPicture.asset(
                      '../assets/icons/logo_mark.svg',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Welcome to Contra UI Kit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    color: ContraColor.selago,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "coded by",
                    style: TextStyle(fontSize: 18.0, color: ContraColor.selago),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '@madman',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      // TextSpan(
                      //   text: '@madmannnnn',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     decoration: TextDecoration.underline,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Divider(),
                ContraButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  text: 'Back',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
