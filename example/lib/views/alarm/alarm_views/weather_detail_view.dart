import 'package:example/views/alarm/alarm_views/circular_list_view.dart';
import 'package:flutter/material.dart';
import 'package:contra_ui/contra_ui.dart';

import '../alarm_model.dart';
import '../weather_widget.dart';

class WeatherDetailView extends StatefulWidget {
  const WeatherDetailView({Key? key}) : super(key: key);

  @override
  _WeatherDetailViewState createState() => _WeatherDetailViewState();
}

class _WeatherDetailViewState extends State<WeatherDetailView> {
  List<WeatherDate> days = [];
  List<int> items = [];

  @override
  void initState() {
    super.initState();
    days.add(WeatherDate(
        color: ContraColor.black,
        day: 'Mon',
        image: '../assets/icons/ic_cloud_rain.svg'));
    days.add(WeatherDate(
        color: ContraColor.black,
        day: "Tue",
        image: "../assets/icons/ic_sun.svg"));
    days.add(WeatherDate(
        color: ContraColor.black,
        day: "Wed",
        image: "../assets/icons/ic_cloud_rain.svg"));
    days.add(WeatherDate(
        color: ContraColor.black,
        day: "Thu",
        image: "../assets/icons/ic_sun.svg"));
    days.add(WeatherDate(
        color: ContraColor.black,
        day: "Fri",
        image: "../assets/icons/ic_sun.svg"));
    days.add(WeatherDate(
        color: ContraColor.black,
        day: "Sat",
        image: "../assets/icons/ic_sun.svg"));
    items.add(1);
    items.add(2);
    items.add(3);
    items.add(4);
    items.add(5);
    items.add(6);
    items.add(7);
    items.add(8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              ContraText(
                text: '11:30 AM, Sunday',
                fontSize: 17,
              ),
              ContraText(
                text: 'New York',
                fontSize: 36,
              ),
              SizedBox(
                height: 80.0,
              ),
              SizedBox(
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ContraText(
                    text: '85',
                    fontSize: 94,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.0),
                    child: ContraText(
                      text: '\u2109',
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
              ContraText(
                text: 'Sunny',
                textColor: ContraColor.trout,
                fontSize: 24,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  direction: Axis.horizontal,
                  verticalDirection: VerticalDirection.down,
                  children: List<Widget>.generate(
                    days.length,
                    (int index) {
                      return WeatherWidget(
                        date: days[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: CircularListView(
                items: items,
                radius: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
