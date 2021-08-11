import 'package:flutter/material.dart';

import '../../contra_ui.dart';

class ContraAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final double? height;
  const ContraAppBar({Key? key, required this.title, this.height})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ContraColor.white,
      toolbarHeight: height ?? 120,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: title,
    );
  }
}
