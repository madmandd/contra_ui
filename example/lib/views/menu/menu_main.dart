import 'package:example/views/menu/menu_views/menu_view_one.dart';
import 'package:example/views/menu/menu_views/menu_view_two.dart';
import 'package:example/views/menu/menu_views/settings_view_one.dart';
import 'package:example/views/menu/menu_views/settings_view_three.dart';
import 'package:example/views/menu/menu_views/settings_view_two.dart';
import 'package:flutter/material.dart';

class MenuMainView extends StatelessWidget {
  const MenuMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu and Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Menu Type One"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuViewOne()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Menu Type Two"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuViewTwo()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type One"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsViewOne()));
                
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type two"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsViewTwo()));
                
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type Three"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingViewThree()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
