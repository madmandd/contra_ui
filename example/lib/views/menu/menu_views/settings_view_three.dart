import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/menu/setting_item_widget.dart';
import 'package:example/views/menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingViewThree extends StatelessWidget {
  const SettingViewThree({Key? key}) : super(key: key);

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
            SizedBox(width: 48,),
            ContraText(
              alignment: Alignment.topLeft,
              text: 'Privacy',
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingsItemWidget(
                settingItem: SettingItem(
                  title: 'Activity Status',
                  description: '',
                  enable: true,
                ),
              ),
              SettingsItemWidget(
                settingItem: SettingItem(
                  title: "Private Account",
                  description:
                      "Only people you approve can see your phots and videos.",
                  enable: false,
                ),
              ),
              SettingsItemWidget(
                settingItem: SettingItem(
                    title: "Location", description: "", enable: true),
              ),
              SettingsItemWidget(
                settingItem: SettingItem(
                    title: "Permission to tag", description: "", enable: true),
              ),
              SettingsItemWidget(
                settingItem: SettingItem(
                    title: "Date of year",
                    description:
                        "Do you want to show this year to public or not?",
                    enable: false),
              ),
              SettingsItemWidget(
                settingItem: SettingItem(
                    title: "Save to archive",
                    description:
                        "Automatically save photos and video to your archive",
                    enable: true),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 24.0,
                ),
                child: ContraButton(
                  height: 60,
                  onPressed: () {},
                  fontSize: 21,
                  text: 'Save',

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
