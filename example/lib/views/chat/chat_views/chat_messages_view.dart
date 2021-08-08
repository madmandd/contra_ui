import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chat/chat_message_item.dart';
import 'package:flutter/material.dart';

import '../message_model.dart';

class ChatMessagesView extends StatefulWidget {
  final Chat? chat;
  const ChatMessagesView({Key? key, this.chat}) : super(key: key);

  @override
  _ChatMessagesViewState createState() => _ChatMessagesViewState();
}

class _ChatMessagesViewState extends State<ChatMessagesView> {
  List<Message?> _items = []
    ..add(Message(
        name: "Kai",
        message: "The end is near",
        time: "3.20 AM",
        isUser: false))
    ..add(Message(
        name: "Charli", message: "Shut up", time: "3.20 AM", isUser: true));

  @override
  void initState() {
    super.initState();
    _items.add(
        Message(name: "Charli", message: "Hi", time: "3.20 AM", isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "How are you?",
        time: "3.20 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Its been long time",
        time: "3.20 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Please have a look",
        time: "3.20 AM",
        isUser: false));
    _items.add(
        Message(name: "Charli", message: "Hey", time: "4.00 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "Hi, I am good",
        time: "4.00 AM",
        isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "I have completed the document",
        time: "4.10 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Will share with you",
        time: "4.10 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli", message: "Yes Please", time: "3.35 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "Hello again",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "I have shared a file",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Please take a look at it",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli", message: "Sure", time: "3.35 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "i will take a look at it",
        time: "3.35 AM",
        isUser: true));
  }

  bool? isTimeStampSame(int index) {
    bool val = false;

    if (index > 0) {
      Message? current = _items[index];
      Message? previous = _items[index - 1] ?? _items[index - 1];

      if (previous != null) {
        if (previous.time == current!.time) {
          val = true;
        }
      }
      return val;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ContraColor.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: ContraColor.wood_smoke,
          icon: Icon(Icons.arrow_back),
        ),
        title: ContraText(
          alignment: Alignment.topLeft,
          text: '${widget.chat!.name}',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: ContraColor.black,
              size: 36,
            ),
          ),
        ],
      ),
      body: Container(
        color: ContraColor.white,
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                reverse: false,
                itemCount: _items.length,
                padding: EdgeInsets.all(24),
                itemBuilder: (BuildContext context, int index) {
                  return ChatMessageItem(
                    message: _items[index],
                    isTimeStampSame: isTimeStampSame(index),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: ContraSendTextField(
                hintText: 'Type your message',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
