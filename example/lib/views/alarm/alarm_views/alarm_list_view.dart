import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alarm_list_item.dart';
import '../alarm_model.dart';

class AlarmListView extends StatefulWidget {
  const AlarmListView({Key? key}) : super(key: key);

  @override
  _AlarmListViewState createState() => _AlarmListViewState();
}

class _AlarmListViewState extends State<AlarmListView> {
  List<Alarm> list = [];
  List<String> items = [];
  List<String> items2 = [];

  @override
  void initState() {
    super.initState();
    items.add("S");
    items.add("M");
    items.add("T");
    items.add("W");
    items.add("T");
    items.add("F");
    items.add("S");
    items2.add("T");
    items2.add("W");
    items2.add("T");
    items2.add("F");
    items2.add("S");
    list.add(Alarm(time: "06:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "10:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "11:30", am_pm: "AM", datesList: items2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: ContraColor.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ContraText(
            text: 'Alarm',
            fontSize: 41,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return AlarmListItem(
            alarm: list[index],
          );
        },
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: ContraIconCircleButton(
            size: 60,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset('../assets/icons/ic_add.svg'),
          ),
        ),
      ),
    );
  }
}
