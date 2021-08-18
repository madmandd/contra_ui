import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/shopping/shopping_views/shopping_detail_page_one.dart';
import 'package:example/views/shopping/shopping_views/shopping_list_page_one.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: ContraColor.white,
          primaryColor: ContraColor.white,
          appBarTheme: AppBarTheme(
            elevation: 0.0,
          )),
      home: ShoppingListPageOne(),
    );
  }
}
