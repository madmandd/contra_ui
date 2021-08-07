import '../constant.dart';
import 'package:flutter/material.dart';

class ContraButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? fontSize;
  final double? width;
  final double? height;

  ContraButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? size.width, height ?? 48.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
        maxLines: 1,
        style: TextStyle(
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class ContraIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? icon;
  final String? label;
  final double? width;
  final double? height;
  final Color? shadowColor;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final Color? bordercolor;

  final bool? isSuffixIcon;
  final bool? isPrefixIcon;
  final bool? isShadow;

  const ContraIconButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.isSuffixIcon = false,
    this.isPrefixIcon = false,
    this.isShadow = false,
    this.width,
    this.height,
    this.shadowColor,
    this.primaryColor,
    this.onPrimaryColor,
    this.bordercolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? size.width,
        height: height ?? 48.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: ShapeDecoration(
          color: primaryColor ?? ContraColor.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              width: 2,
              color: bordercolor ?? ContraColor.black,
            ),
          ),
          shadows: isShadow == true
              ? [
                  BoxShadow(
                    offset: Offset(0.0, 4.0),
                    color: shadowColor ?? ContraColor.black,
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSuffixIcon == true ? icon! : SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                label!,
                style: TextStyle(
                  color: onPrimaryColor ?? ContraColor.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            isPrefixIcon == true ? icon! : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class ContraIconCircleButton extends StatelessWidget {
  final Color? borderColor;
  final Color? shadowColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? size;
  final Widget icon;

  const ContraIconCircleButton({
    Key? key,
    this.borderColor,
    this.shadowColor,
    this.backgroundColor,
    required this.onPressed,
    required this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: size ?? size,
      width: size ?? size,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(width: 2, color: borderColor ?? ContraColor.black),
        ),
        color: backgroundColor ?? ContraColor.white,
        shadows: [
          BoxShadow(
            color: shadowColor ?? ContraColor.black,
            offset: Offset(0.0, 4.0),
          )
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}

class ContraBadge extends StatelessWidget {
  final double? size;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  const ContraBadge({
    Key? key,
    this.size,
    this.backgroundColor,
    this.textColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: ShapeDecoration(
        color: backgroundColor ?? ContraColor.flamingo,
        shape: CircleBorder(
          side: BorderSide(
              width: 2, color: backgroundColor ?? ContraColor.flamingo),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: textColor ?? ContraColor.white,
          ),
        ),
      ),
    );
  }
}
