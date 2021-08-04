import 'package:example/views/chat/chat_views/chat_list_view.dart';
// import 'package:example/views/chat/chat_views/chat_messages_view.dart';
import 'package:example/views/chat/chat_views/chat_search_view.dart';
import 'package:flutter/material.dart';

class ChatMainView extends StatelessWidget {
  const ChatMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Main View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Chat List View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChatListView()));
              },
            ),
            // ListTile(
            //   contentPadding: EdgeInsets.all(20.0),
            //   trailing: Icon(Icons.navigate_next),
            //   title: Text('Chat Message View'),
            //   onTap: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => ChatMessagesView()));
            //   },
            // ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Chat Search View'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChatSearchView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
