import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/content_views/blog_home.dart';
import 'package:example/views/content/content_views/detail_view_type_four.dart';
import 'package:example/views/content/content_views/detail_view_type_one.dart';
import 'package:example/views/content/content_views/detail_view_type_three.dart';
import 'package:example/views/content/content_views/detail_view_type_two.dart';
import 'package:example/views/content/content_views/image_text_view.dart';
import 'package:example/views/content/content_views/invite_list_view.dart';
import 'package:example/views/content/content_views/user_list_view.dart';
import 'package:example/views/content/detail_view_grid.dart';
import 'package:flutter/material.dart';

class ContentMainView extends StatelessWidget {
  const ContentMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 100,
        title: ContraText(text: 'Content, Text & Detauls'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Blog Home'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => BlogHomeView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Detail View One'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailViewTypeOne()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Detail View Two'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailViewTypeTwo()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Detail View Three'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailViewTypeThree()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Detail View Four'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailViewTypeFour()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Image and Text'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageTextViewer()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('Detail View Grid'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailViewGrid()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('User Listing'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserListView()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(
                Icons.navigate_next,
              ),
              title: Text('User Invite View'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InviteListView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
