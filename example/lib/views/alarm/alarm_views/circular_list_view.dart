import 'dart:math';

import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/alarm/circular_position.dart';
import 'package:flutter/material.dart';

import '../circular_list_item.dart';

class CircularListView extends StatefulWidget {
  final List<int> items;
  final double radius;

  const CircularListView({Key? key, required this.items, required this.radius})
      : super(key: key);

  List<Widget> _radialListItems() {
    final double firstItemAngle = pi;
    final double lastItemangle = pi;
    final double angleDiff = (firstItemAngle + lastItemangle) / (items.length);

    double currentAngle = firstItemAngle;

    return items.map((int i) {
      final listItem = _radialListItem(currentAngle);
      currentAngle += angleDiff;
      return listItem;
    }).toList();
  }

  List<Widget> _allWidgets() {
    List<Widget> allWidgets = [];

    allWidgets.add(_backgroundWidget());
    allWidgets.addAll(_radialListItems());
    return allWidgets;
  }

  Widget _backgroundWidget() {
    return Transform(
      transform: new Matrix4.translationValues(145, 320, 0.0),
      child: Container(
        width: 120,
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 120),
        decoration: new BoxDecoration(
          color: ContraColor.white,
          shape: BoxShape.circle,
          border: new Border.all(
            color: ContraColor.black,
            width: 16.0,
          ),
        ),
      ),
    );
  }

  Widget _radialListItem(double angle) {
    return Transform(
      transform: new Matrix4.translationValues(215, 400, 0.0),
      child: CircularPosition(
          radius: radius, angle: angle, child: new CircularListItem()),
    );
  }

  @override
  _CircularListViewState createState() => _CircularListViewState();
}

class _CircularListViewState extends State<CircularListView> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: widget._allWidgets(),
    );
  }
}
