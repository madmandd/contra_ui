import 'package:flutter/material.dart';

class Alarm {
  final String time;
  final String am_pm;
  final List<String> datesList;

  const Alarm(
      {required this.time, required this.am_pm, required this.datesList});
}

class Alarmlabel {
  final String title;
  final String selectedText;
  final bool selected;

  const Alarmlabel(
      {required this.selected,
      required this.selectedText,
      required this.title});
}

class Weather {
  final String country;
  final String city;
  final String time;
  final String image;
  final String am_pm;

  final String degree;
  final Color color;

  const Weather({
    required this.country,
    required this.city,
    required this.time,
    required this.image,
    required this.am_pm,
    required this.degree,
    required this.color,
  });
}

class WeatherDate {
  final String day;
  final String image;
  final Color color;

  const WeatherDate(
      {required this.color, required this.day, required this.image});
}

class Clock {
  final String country;
  final String city;
  final String time;
  final String am_pm;
  final Color color;

  const Clock({
    required this.country,
    required this.city,
    required this.time,
    required this.am_pm,
    required this.color,
  });
}
