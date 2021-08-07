import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chat/chat_views/chat_list_view.dart';
import 'package:example/views/chat/chat_views/chat_messages_view.dart';
import 'package:example/views/chat/chat_views/chat_search_view.dart';
import 'package:example/views/chat/message_model.dart';
import 'package:flutter/material.dart';

class ChatHomeView extends StatefulWidget {
  const ChatHomeView({Key? key}) : super(key: key);

  @override
  _ChatHomeViewState createState() => _ChatHomeViewState();
}

class _ChatHomeViewState extends State<ChatHomeView> {
  int _currentIndex = 0;

  final List<Widget> _childrenWidgets = [
    ChatListView(),
    ChatSearchView(),
    ChatMessagesView(chat: Chat(name: 'Kai', message: 'Hello Vij', time: '6:30', count: '9'),),
    ChatListView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _childrenWidgets.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: ContraColor.wood_smoke,
        unselectedItemColor: ContraColor.trout,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: ContraColor.wood_smoke, opacity: 1),
        unselectedIconTheme: IconThemeData(color: ContraColor.trout, opacity: 0.6),
        selectedLabelStyle: TextStyle(
            color: ContraColor.wood_smoke, fontSize: 12, fontWeight: FontWeight.w800),
        unselectedLabelStyle:
            TextStyle(color: ContraColor.trout, fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }
}
