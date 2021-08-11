import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/menu/settings.dart';
import 'package:flutter/material.dart';

class SettingsItemWidget extends StatefulWidget {
  final SettingItem settingItem;
  const SettingsItemWidget({Key? key, required this.settingItem})
      : super(key: key);

  @override
  _SettingsItemWidgetState createState() => _SettingsItemWidgetState();
}

class _SettingsItemWidgetState extends State<SettingsItemWidget> {
  bool isChanged = false;
  String? title;
  String? description;
  bool? enable;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    isChanged = widget.settingItem.enable;
    title = widget.settingItem.title;
    description = widget.settingItem.description;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContraText(
                  text: title!,
                  alignment: Alignment.centerLeft,
                  fontSize: 21,
                ),
                SizedBox(
                  height: 4.0,
                ),
                description!.isNotEmpty
                    ? Text(
                        description!,
                        style: TextStyle(
                          color: ContraColor.trout,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : SizedBox(
                        height: 0,
                      ),
              ],
            ),
          ),
          Switch(
            value: isChanged,
            onChanged: onChanged,
            activeTrackColor: ContraColor.lightening_yellow,
            inactiveTrackColor: ContraColor.santas_gray,
            inactiveThumbColor: ContraColor.white,
          ),
        ],
      ),
    );
  }
}
