import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/alarm/clock_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alarm_model.dart';

class ClockListView extends StatefulWidget {
  const ClockListView({Key? key}) : super(key: key);

  @override
  _ClockListViewState createState() => _ClockListViewState();
}

class _ClockListViewState extends State<ClockListView> {
  List<Clock> clocks = [];

  @override
  void initState() {
    super.initState();
    clocks.add(Clock(
        country: 'India',
        city: 'New Delhi',
        time: '06:30',
        am_pm: 'AM',
        color: ContraColor.white));
    clocks.add(Clock(
        country: "China",
        city: "Wuhan",
        am_pm: "AM",
        time: "10:30",
        color: ContraColor.dandelion));
    clocks.add(Clock(
        country: "Pakistan",
        city: "Karachi",
        am_pm: "AM",
        time: "06:30",
        color: ContraColor.pastel_pink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContraColor.persian_blue,
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: ContraColor.persian_blue,
        title: ContraHeader(
          firstText: 'World',
          secondText: 'Clock',
          backgroundColor: ContraColor.persian_blue,
          foregroundColor: ContraColor.white,
          textColor: ContraColor.white,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: clocks.length,
        itemBuilder: (BuildContext context, int index) {
          return ClockListItem(clock: clocks[index]);
        },
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: ContraIconCircleButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset('../assets/icons/ic_add.svg'),
            size: 60,
          ),
        ),
      ),
    );
  }
}
