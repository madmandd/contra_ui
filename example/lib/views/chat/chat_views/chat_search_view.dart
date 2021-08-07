import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chat/chat_search_item.dart';
import 'package:example/views/chat/chat_views/chat_messages_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../message_model.dart';

class ChatSearchView extends StatefulWidget {
  const ChatSearchView({Key? key}) : super(key: key);

  @override
  _ChatSearchViewState createState() => _ChatSearchViewState();
}

class _ChatSearchViewState extends State<ChatSearchView> {
  List<Chat?> _items = [];
  List<Chat?> _filtered = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_searchTextValue);
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Chandran",
        message: "Call me after 5",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Harray",
        message: "No food left in the kitchen",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Leonard",
        message: "Get groceries while coming",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Sheldon",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Chirag",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Karthick",
        message: "Can we have coffe?",
        time: "3.30 AM",
        count: "2"));
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
    _filtered = _items;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  _searchTextValue() {
    print("search field: ${_textEditingController.text}");
    if (_textEditingController.text.isEmpty) {
      setState(() {
        _filtered = _items;
      });
      return;
    }
    List<Chat?> tempList = [];
    for (int i = 0; i < _filtered.length; i++) {
      if (_filtered[i]!
          .name
          .toLowerCase()
          .contains(_textEditingController.text.toLowerCase())) {
        tempList.add(_filtered[i]);
      }
    }
    setState(() {
      _filtered = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: ContraColor.white,
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: ContraIconCircleButton(
                  size: 48,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset('../assets/icons/arrow_back.svg'),
                ),
              ),
              Expanded(
                flex: 1,
                child: ContraSearchTextField(
                  suffixIcon: SvgPicture.asset('../assets/icons/ic_search.svg'),
                  hintText: "Search with love ...",
                  enable: true,
                  onPressed: () {},
                  controller: _textEditingController,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: ContraColor.white,
        child: ListView.builder(
          itemCount: _filtered.length,
          padding: EdgeInsets.all(24.0),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                _launchMessageView(_filtered[index]);
              },
              child: ChatSearchItem(
                chat: _filtered[index],
              ),
            );
          },
        ),
      ),
    );
  }

  void _launchMessageView(Chat? item) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => ChatMessagesView(
          chat: item,
        ),
      ),
    );
  }
}
