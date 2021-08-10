import 'dart:math';

import 'package:flutter/material.dart';

class CircularPosition extends StatefulWidget {
  final double radius;
  final double angle;
  final Widget child;

  const CircularPosition({
    Key? key,
    required this.radius,
    required this.angle,
    required this.child,
  }) : super(key: key);

  @override
  _CircularPositionState createState() => _CircularPositionState();
}

class _CircularPositionState extends State<CircularPosition> {
  @override
  Widget build(BuildContext context) {
    final x = cos(widget.angle) * widget.radius;
    final y = sin(widget.angle) * widget.radius;
    return Transform(
      transform: new Matrix4.translationValues(x, y, 0.0),
      child: widget.child,
    );
  }
}
