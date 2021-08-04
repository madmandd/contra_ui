import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chat/chat_views/chat_list_view.dart';
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
    ChatListView(),
    ChatListView(),
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
        selectedItemColor: wood_smoke,
        unselectedItemColor: trout,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: wood_smoke, opacity: 1),
        unselectedIconTheme: IconThemeData(color: trout, opacity: 0.6),
        selectedLabelStyle: TextStyle(
            color: wood_smoke, fontSize: 12, fontWeight: FontWeight.w800),
        unselectedLabelStyle:
            TextStyle(color: trout, fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }
}
