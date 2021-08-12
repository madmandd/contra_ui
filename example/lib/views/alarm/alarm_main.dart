import 'package:example/views/alarm/alarm_views/add_alarm_view.dart';
import 'package:example/views/alarm/alarm_views/alarm_list_view.dart';

import 'package:example/views/alarm/alarm_views/clock_list_view.dart';
import 'package:example/views/alarm/alarm_views/weather_detail_view.dart';
import 'package:example/views/alarm/alarm_views/weather_list_view.dart';
import 'package:flutter/material.dart';

class AlarmMainView extends StatelessWidget {
  const AlarmMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm, Clock, Weather'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Alarm List View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AlarmListView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Add Alarm View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddAlarmView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Clock List View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ClockListView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Weather List View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WeatherListView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Weather Detail View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WeatherDetailView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
