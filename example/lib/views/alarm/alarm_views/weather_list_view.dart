import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/alarm/weather_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alarm_model.dart';

class WeatherListView extends StatefulWidget {
  const WeatherListView({Key? key}) : super(key: key);

  @override
  _WeatherListViewState createState() => _WeatherListViewState();
}

class _WeatherListViewState extends State<WeatherListView> {
  List<Weather> clocks = [];

  @override
  void initState() {
    super.initState();
    clocks.add(Weather(
      country: 'India',
      city: 'New Delhi',
      time: '06:30',
      image: '../assets/icons/ic_cloud_rain.svg',
      am_pm: "AM",
      degree: "85",
      color: ContraColor.white,
    ));
    clocks.add(Weather(
        country: "China",
        city: "Wuhan",
        degree: "85",
        am_pm: "AM",
        image: "../assets/icons/ic_cloud_rain.svg",
        time: "10:30",
        color: ContraColor.dandelion));
    clocks.add(Weather(
        country: "Pakistan",
        image: "../assets/icons/ic_cloud_rain.svg",
        degree: "85",
        am_pm: "AM",
        city: "Karachi",
        time: "06:30",
        color: ContraColor.pastel_pink));
    clocks.add(Weather(
        country: "USA",
        image: "../assets/icons/ic_cloud_rain.svg",
        degree: "85",
        am_pm: "AM",
        city: "Ohio",
        time: "06:30",
        color: ContraColor.flamingo));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: ContraColor.white,
        elevation: 0.0,
        title: ContraText(
          text: 'Weather',
          alignment: Alignment.centerLeft,
          fontSize: 44,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(24.0),
        itemCount: clocks.length,
        itemBuilder: (BuildContext context, int index) {
          return WeatherListItem(weather: clocks[index]);
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
