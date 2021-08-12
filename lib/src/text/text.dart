import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

class ContraText extends StatelessWidget {
  const ContraText({
    Key? key,
    required this.text,
    this.alignment,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textColor,
  }) : super(key: key);

  final AlignmentGeometry? alignment;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start,
        style: TextStyle(
          fontSize: fontSize ?? 36.0,
          fontWeight: fontWeight ?? FontWeight.w800,
          color: textColor ?? ContraColor.black,
        ),
      ),
    );
  }
}

class ContraRichText extends StatelessWidget {
  final AlignmentGeometry? alignment;
  final String? firstText;
  final String? secondText;

  const ContraRichText(
      {Key? key, this.alignment, this.firstText, this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: firstText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: ContraColor.black,
              ),
            ),
            TextSpan(
                text: secondText,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: ContraColor.flamingo,
                ))
          ],
        ),
      ),
    );
  }
}

class ContraTextImage extends StatelessWidget {
  final double? size;
  final String? text;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  const ContraTextImage({
    Key? key,
    this.size,
    this.borderColor,
    required this.text,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 48,
      height: size ?? 48,
      decoration: ShapeDecoration(
        color: backgroundColor ?? ContraColor.dandelion,
        shape: CircleBorder(
          side: BorderSide(
              width: 2, color: borderColor ?? ContraColor.wood_smoke),
        ),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: textColor ?? ContraColor.white,
          ),
        ),
      ),
    );
  }
}

class ContraHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color? foregroundColor;
  final Color? textColor;
  final Color? backgroundColor;
  const ContraHeader({
    Key? key,
    required this.firstText,
    required this.secondText,
    this.foregroundColor,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Text(
                firstText,
                style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = foregroundColor ?? ContraColor.wood_smoke),
              ),
              Text(
                firstText,
                style: TextStyle(
                  fontSize: 44,
                  color: backgroundColor ?? ContraColor.white,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
          ContraText(
            text: secondText,
            alignment: Alignment.centerLeft,
            fontSize: 44,
            textColor: textColor,
          )
        ],
      ),
    );
  }
}
