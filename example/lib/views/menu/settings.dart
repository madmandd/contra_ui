import 'package:flutter/material.dart';

class Settings {
  final String title;
  final String text;
  final bool enable;
  final Color backgroundColor;
  final Color textColor;

  const Settings(
      {required this.title,
      required this.text,
      required this.enable,
      required this.backgroundColor,
      required this.textColor});
}

class SettingCardDetail {
  final String title;
  final Color backgroundColor;
  final Color borderColor;
  final List<SettingCardItemDetail> items;

  const SettingCardDetail({
    required this.title,
    required this.backgroundColor,
    required this.borderColor,
    required this.items,
  });
}

class SettingCardItemDetail {
  final String title;
  final Color textColor;
  final Color backgroundColor;

  SettingCardItemDetail(
      {required this.title,
      required this.textColor,
      required this.backgroundColor});
}

class SettingItem {
  final String title;
  final String description;
  final bool enable;

  const SettingItem({
    required this.title,
    required this.description,
    required this.enable,
  });
}
