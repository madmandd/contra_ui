import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/alarm/alarm_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alarm_model.dart';
import '../bottom_sheet_input.dart';

class AddAlarmView extends StatefulWidget {
  const AddAlarmView({Key? key}) : super(key: key);

  @override
  _AddAlarmViewState createState() => _AddAlarmViewState();
}

class _AddAlarmViewState extends State<AddAlarmView> {
  List<Alarm> list = [];
  List<String> items = [];
  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    items.add("T");
    items.add("S");
    items.add("T");
    list.add(Alarm(time: '06:30', am_pm: "AM", datesList: items));
    list.add(Alarm(time: '06:30', am_pm: "AM", datesList: items));
    list.add(Alarm(time: '06:30', am_pm: "AM", datesList: items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        toolbarHeight: 100,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: ContraIconCircleButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: SvgPicture.asset(
                  '../assets/icons/arrow_back.svg',
                ),
              ),
            ),
            SizedBox(
              width: 48,
            ),
            Expanded(
              flex: 4,
              child: ContraText(
                alignment: Alignment.topLeft,
                text: 'Add Alarm',
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
          ),
          AlarmLabelWidget(
            label: Alarmlabel(
              title: 'Repeat',
              selected: false,
              selectedText: 'Never',
            ),
            onTap: () {},
          ),
          AlarmLabelWidget(
              label: Alarmlabel(
                title: "Title",
                selected: true,
                selectedText: "Never",
              ),
              onTap: () {
                _showAddLabelBottomSheet();
              },),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContraText(
                  text: "Snooze",
                  alignment: Alignment.centerLeft,
                ),
                Switch(
                  activeTrackColor: ContraColor.lightening_yellow,
                  inactiveThumbColor: ContraColor.white,
                  inactiveTrackColor: ContraColor.santas_gray,
                  value: isChanged,
                  onChanged: onChanged,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: ContraButton(
              onPressed: () {},
              text: 'Save',
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }

  _showAddLabelBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext contex) {
        return BottomSheetInput();
      },
    );
  }
}
