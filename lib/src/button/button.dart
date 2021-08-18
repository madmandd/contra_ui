import 'package:contra_ui/contra_ui.dart';

import '../constant.dart';
import 'package:flutter/material.dart';

class ContraButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? fontSize;
  final double? width;
  final double? height;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final Color? borderColor;

  ContraButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
    this.primaryColor,
    this.onPrimaryColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor ?? ContraColor.wood_smoke,
        onPrimary: onPrimaryColor ?? ContraColor.white,
        minimumSize: Size(width ?? size.width, height ?? 48.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(color: borderColor ?? ContraColor.wood_smoke)),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
        maxLines: 1,
        style: TextStyle(
          color: onPrimaryColor ?? ContraColor.white,
          fontSize: fontSize ?? 17,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class ContraIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? icon;
  final String? label;
  final double? width;
  final double? height;
  final Color? shadowColor;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final Color? bordercolor;

  final bool isSuffixIcon;
  final bool isPrefixIcon;
  final bool isShadow;

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
            isPrefixIcon == true ? icon! : SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                label!,
                style: TextStyle(
                  color: onPrimaryColor ?? ContraColor.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            isSuffixIcon == true ? icon! : SizedBox(),
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
      padding: const EdgeInsets.all(4.0),
      height: size ?? 48,
      width: size ?? 48,
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

class ContraCircleDot extends StatelessWidget {
  final bool isActive;
  final Color? color;
  final Color? borderColor;

  const ContraCircleDot(
      {Key? key, this.isActive = false, this.color, this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 14 : 10,
      width: isActive ? 14 : 10,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: borderColor ?? ContraColor.white,
        ),
        color: color ?? ContraColor.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

class CartAddRemoveButton extends StatefulWidget {
  const CartAddRemoveButton({Key? key}) : super(key: key);

  @override
  _CartAddRemoveButtonState createState() => _CartAddRemoveButtonState();
}

class _CartAddRemoveButtonState extends State<CartAddRemoveButton> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  void onAddClicked() {
    if (count < 4) {
      setState(() {
        count = count + 1;
        print('add clicked' + count.toString());
      });
    }
  }

  void onRemoveClicked() {
    if (count > 0) {
      setState(() {
        count = count - 1;
        print('remove clicked' + count.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 40,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: ContraColor.wood_smoke, width: 2),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          count == 0
              ? SizedBox()
              : Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onRemoveClicked();
                    },
                    child: IconButton(
                        onPressed: () {
                          onRemoveClicked();
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 24,
                        )),
                  ),
                ),
          count == 0
              ? Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    decoration: ShapeDecoration(
                      color: ContraColor.lightening_yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Add',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ContraColor.wood_smoke,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                )
              : Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    color: ContraColor.lightening_yellow,
                    child: Text(
                      count.toString(),
                      style: TextStyle(
                        color: ContraColor.wood_smoke,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
          Expanded(
              child: GestureDetector(
            onTap: () {
              onAddClicked();
            },
            child: IconButton(
              onPressed: () {
                onAddClicked();
              },
              icon: Icon(
                Icons.add,
                size: 24,
              ),
            ),
          ))
        ],
      ),
    );
  }
}





class ChipFilterWidget extends StatefulWidget {
  final List<String> filters;
  const ChipFilterWidget({Key? key, required this.filters}) : super(key: key);

  @override
  _ChipFilterWidgetState createState() => _ChipFilterWidgetState();
}

class _ChipFilterWidgetState extends State<ChipFilterWidget> {
  List<String> options = [];
  List<int> selectedChoices = [];

  @override
  void initState() {
    super.initState();
    options = widget.filters;
    selectedChoices.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 12,
        runSpacing: 12,
        children: List<Widget>.generate(
          options.length,
          (int index) {
            return ChipWidget(
              selected: selectedChoices.contains(index),
              text: options[index],
              onPressed: () {
                setState(() {
                  selectedChoices.contains(index)
                      ? selectedChoices.remove(index)
                      : selectedChoices.add(index);
                });
              },
            );
            // ignore: dead_code
            ChoiceChip(
              disabledColor: ContraColor.white,
              selectedColor: ContraColor.pastel_pink,
              padding: EdgeInsets.all(12),
              avatarBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: ContraColor.wood_smoke, width: 2)),
              label: Text(
                options[index],
                style: TextStyle(
                    color: ContraColor.wood_smoke,
                    fontWeight: FontWeight.w800,
                    fontSize: 12),
              ),
              selected: selectedChoices.contains(index),
              onSelected: (bool selected) {
                setState(() {
                  selectedChoices.contains(index)
                      ? selectedChoices.remove(index)
                      : selectedChoices.add(index);
                });
              },
            );
          },
        ).toList(),
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onPressed;

  const ChipWidget({
    Key? key,
    required this.text,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: ContraColor.wood_smoke, fontWeight: FontWeight.bold),
            ),
            selected
                ? Icon(
                    Icons.close,
                    color: ContraColor.wood_smoke,
                    size: 24,
                  )
                : SizedBox()
          ],
        ),
        decoration: ShapeDecoration(
          color: selected ? ContraColor.pastel_pink : ContraColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(44)),
            side: BorderSide(
              color: ContraColor.wood_smoke,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
