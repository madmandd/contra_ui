import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageTextView extends StatefulWidget {
  final String image;
  const ImageTextView({Key? key, required this.image}) : super(key: key);

  @override
  _ImageTextViewState createState() => _ImageTextViewState();
}

class _ImageTextViewState extends State<ImageTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SvgPicture.asset(
          widget.image,
          height: 500,
          width: 180,
        ),
      ),
    );
  }
}
