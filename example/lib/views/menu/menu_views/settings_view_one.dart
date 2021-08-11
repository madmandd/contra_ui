import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/menu/setting_card_item.dart';
import 'package:example/views/menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsViewOne extends StatefulWidget {
  const SettingsViewOne({Key? key}) : super(key: key);

  @override
  _SettingsViewOneState createState() => _SettingsViewOneState();
}

class _SettingsViewOneState extends State<SettingsViewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 100,
        title: Row(
          children: [
            ContraIconCircleButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              size: 48,
              icon: SvgPicture.asset(
                '../assets/icons/arrow_back.svg',
              ),
            ),
            SizedBox(
              width: 48,
            ),
            ContraText(
              alignment: Alignment.topLeft,
              text: 'Settings',
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: SettingsCardItem(
                settings: Settings(
                  backgroundColor: ContraColor.pink_salomn,
                  enable: true,
                  text:
                      "Colorful and Beautiful life if you want to enjoy every moment.",
                  textColor: ContraColor.white,
                  title: 'Happiness',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: SettingsCardItem(
                settings: Settings(
                  backgroundColor: ContraColor.foam,
                  enable: false,
                  text: "Sometime you don’t want to talk.",
                  textColor: ContraColor.wood_smoke,
                  title: 'Sadness',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: SettingsCardItem(
                settings: Settings(
                  backgroundColor: ContraColor.bareley_white,
                  title: 'Friends',
                  text: "I’ll not help you to finish this.",
                  textColor: ContraColor.wood_smoke,
                  enable: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: ContraButton(
                height: 60,
                text: 'Confirm',
                fontSize: 21,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
