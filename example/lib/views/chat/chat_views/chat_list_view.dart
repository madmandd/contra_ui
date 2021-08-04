import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chat/chat_list_item.dart';
import 'package:example/views/chat/chat_views/chat_messages_view.dart';
import 'package:example/views/chat/chat_views/chat_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../message_model.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  List<Chat> _items = []..add(Chat(
      name: "Charli",
      message: "Please have a look",
      time: "3.30 AM",
      count: "2"));
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _items.add(Chat(
        name: "Chandran",
        message: "Call me after 5",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Harray",
        message: "No food left in the kitchen",
        time: "3.30 AM",
        count: ""));
    _items.add(Chat(
        name: "Leonard",
        message: "Get groceries while coming",
        time: "3.30 AM",
        count: ""));
    _items.add(Chat(
        name: "Sheldon",
        message: "Please have a look",
        time: "3.30 AM",
        count: ""));
    _items.add(Chat(
        name: "Chirag",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "4"));
    _items.add(Chat(
        name: "Karthick",
        message: "Can we have coffe?",
        time: "3.30 AM",
        count: "4"));
    _items.add(Chat(
        name: "Murali",
        message: "Lets meet tommorrow",
        time: "3.30 AM",
        count: "5"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 56.0,
              ),
              ContraText(
                alignment: Alignment.centerLeft,
                text: 'Chat',
              ),
              SizedBox(
                height: 24.0,
              ),
              ContraSearchTextField(
                onPressed: () {
                  print('pressed');
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ChatSearchView()));
                },
                enable: false,
                hintText: "Search with love...",
                suffixIcon: SvgPicture.asset(
                  '../assets/icons/ic_search.svg',
                  width: 24,
                  height: 24,
                ),
                controller: _textController,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChatListItem(
                    chat: _items[index],
                    onPressed: () {
                      _launchChatMessage(_items[index]);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _launchChatMessage(Chat item) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ChatMessagesView(
        chat: item,
      );
    }));
  }
}
