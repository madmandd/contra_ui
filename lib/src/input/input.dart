import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';

class ContraInputText extends StatelessWidget {
  final Widget? prefixIcon;
  final String? hintText;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final bool? obscureText;
  final VoidCallback? onPressed;
  final Color? boderColor;
  final Color? shadowColor;

  const ContraInputText({
    Key? key,
    this.prefixIcon,
    this.hintText,
    this.controller,
    this.onChanged,
    this.obscureText,
    this.onPressed,
    this.boderColor,
    this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        onTap: onPressed,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: ContraColor.wood_smoke,
          ),
          contentPadding: EdgeInsets.all(16.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: boderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: boderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: boderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: boderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: prefixIcon,
          ),
        ),
      ),
    );
  }
}

class PinInputText extends StatelessWidget {
  final double? size;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final Color? borderColor;
  final Color? textColor;

  const PinInputText(
      {Key? key,
      this.size,
      this.onChanged,
      this.controller,
      this.borderColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 56,
      height: size ?? 56,
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        maxLength: 1,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: textColor ?? ContraColor.wood_smoke,
        ),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          hintStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: textColor ?? ContraColor.wood_smoke,
          ),
          hintText: "_",
          contentPadding: EdgeInsets.all(2.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor ?? ContraColor.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor ?? ContraColor.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor ?? ContraColor.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor ?? ContraColor.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
      ),
    );
  }
}

class ContraDescriptionTextField extends StatelessWidget {
  final String? hintText;
  final Widget? icon;
  final double? size;
  final double? height;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final Color? borderColor;
  final Color? textColor;

  const ContraDescriptionTextField({
    Key? key,
    this.hintText,
    this.icon,
    this.size,
    this.onChanged,
    this.controller,
    this.borderColor,
    this.textColor,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 150,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: textColor ?? ContraColor.wood_smoke,
          ),
          contentPadding: EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: borderColor ?? ContraColor.black),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          prefixIcon: icon,
        ),
      ),
    );
  }
}

class ContraSearchTextField extends StatelessWidget {
  final Color? borderColor;
  final Color? shadowColor;
  final Color? textColor;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? enable;
  final TextEditingController? controller;
  final VoidCallback? onPressed;
  final Function(String?)? onChanged;
  const ContraSearchTextField({
    Key? key,
    this.borderColor,
    this.shadowColor,
    this.textColor,
    this.hintText,
    this.suffixIcon,
    this.enable,
    this.controller,
    this.onPressed,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            offset: Offset(0.0, 4.0),
            color: shadowColor ?? ContraColor.wood_smoke,
          )
        ],
        color: ContraColor.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 2, color: borderColor ?? ContraColor.wood_smoke),
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
      ),
      child: TextField(
        onTap: onPressed,
        onChanged: onChanged,
        readOnly: !(enable ?? false),
        enableInteractiveSelection: enable ?? false,
        controller: controller,
        autofocus: false,
        enableSuggestions: enable ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: textColor ?? ContraColor.wood_smoke,
          ),
          contentPadding: EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: suffixIcon,
          ),
        ),
      ),
    );
  }
}

class ContraSendTextField extends StatelessWidget {
  final String? hintText;
  final Color? borderColor;
  final Color? shadowColor;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressed;

  const ContraSendTextField({
    Key? key,
    required this.hintText,
    this.borderColor,
    this.shadowColor,
    this.backgroundColor,
    required this.onPressed,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
        side: BorderSide(
          width: 2,
          color: borderColor ?? ContraColor.wood_smoke,
        ),
      )),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: textColor ?? ContraColor.santas_gray,
                ),
                contentPadding: EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_voice),
            color: borderColor ?? ContraColor.wood_smoke,
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.send),
            color: borderColor ?? ContraColor.wood_smoke,
          ),
        ],
      ),
    );
  }
}
