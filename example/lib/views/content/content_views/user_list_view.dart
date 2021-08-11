import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/user_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../content.dart';

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  _UserListViewState createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  final _textEditingController = TextEditingController();
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    users.add(User(
        backgroundColor: ContraColor.caribbean_color,
        profile: '../assets/images/peep_man_three.svg',
        designation: "Designer",
        name: "Angela Mehra",
        textColor: ContraColor.white));
    users.add(User(
        name: "Konami Ravi",
        designation: "Muscian",
        textColor: ContraColor.white,
        profile: "../assets/images/peep_lady_one.svg",
        backgroundColor: ContraColor.flamingo));
    users.add(User(
        name: "Hard Cops",
        textColor: ContraColor.white,
        designation: "Bill Rizer",
        profile: "../assets/images/peep_man_right.svg",
        backgroundColor: Colors.yellow));
    users.add(User(
      textColor: ContraColor.black,
      name: "Kalia Youknow",
      designation: "Muscian",
      backgroundColor: ContraColor.caribbean_color,
      profile: "../assets/images/peep_lady_right.svg",
    ));
    users.add(User(
      textColor: ContraColor.white,
      name: " Genbei Yagy ",
      designation: "Planet Designer",
      backgroundColor: ContraColor.caribbean_color,
      profile: "../assets/images/peep_lady_right.svg",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 180,
        title: ContraHeader(
          firstText: 'Popular',
          secondText: 'Artists',

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: ContraSearchTextField(
                suffixIcon: SvgPicture.asset('../assets/icons/ic_search.svg'),   
                hintText: 'Search with love...',
                enable: true,
                onPressed: () {},
                controller: _textEditingController,
              ),
            ),
            ListView.builder(
              itemCount: users.length,
              shrinkWrap: true,
              padding: EdgeInsets.all(24.0),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return UserListItem(user: users[index]);
              },
            )
          ],

        ),
      ),
    );
  }
}
