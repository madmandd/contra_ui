import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/menu/setting_list_card_item.dart';
import 'package:example/views/menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsViewTwo extends StatefulWidget {
  const SettingsViewTwo({Key? key}) : super(key: key);

  @override
  _SettingsViewTwoState createState() => _SettingsViewTwoState();
}

class _SettingsViewTwoState extends State<SettingsViewTwo> {
  SettingCardDetail? detailOne;
  SettingCardDetail? detailTwo;

  List<SettingCardItemDetail> detailsOne = [];
  List<SettingCardItemDetail> detailsTwo = [];

  @override
  void initState() {
    super.initState();
    detailsOne.add(SettingCardItemDetail(
      title: 'Display and sound',
      textColor: ContraColor.wood_smoke,
      backgroundColor: ContraColor.lightening_yellow,
    ));
    detailsOne.add(SettingCardItemDetail(
      title: "Data usage",
      backgroundColor: ContraColor.lightening_yellow,
      textColor: ContraColor.wood_smoke,
    ));
    detailsOne.add(SettingCardItemDetail(
      title: "Accessibility",
      backgroundColor: ContraColor.lightening_yellow,
      textColor: ContraColor.wood_smoke,
    ));
    detailsTwo.add(SettingCardItemDetail(
      title: 'Account',
      backgroundColor: ContraColor.lightening_yellow,
      textColor: ContraColor.wood_smoke,
    ));
    detailsTwo.add(SettingCardItemDetail(
      title: 'Password',
      backgroundColor: ContraColor.turquoise_blue,
      textColor: ContraColor.wood_smoke,
    ));
    detailsTwo.add(SettingCardItemDetail(
        title: 'Privacy',
        backgroundColor: ContraColor.mona_lisa,
        textColor: ContraColor.wood_smoke));
    detailsTwo.add((SettingCardItemDetail(
      title: 'Preferences',
      backgroundColor: ContraColor.lightening_yellow,
      textColor: ContraColor.wood_smoke,
    )));
    detailOne = SettingCardDetail(
        title: 'General',
        backgroundColor: ContraColor.white,
        borderColor: ContraColor.wood_smoke,
        items: detailsOne);
    detailTwo = SettingCardDetail(
      title: "Security and Privacy",
      backgroundColor: ContraColor.white,
      borderColor: ContraColor.wood_smoke,
      items: detailsTwo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        elevation: 0,
        automaticallyImplyLeading: false,
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
            SizedBox(width: 48,),
            ContraText(
              alignment: Alignment.topLeft,
              text: 'Settings',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SettingsListCardItem(detail: detailOne!),
          SettingsListCardItem(detail: detailTwo!),
        ],
      ),
    );
  }
}
