import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/content.dart';
import 'package:example/views/content/invite_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InviteListView extends StatefulWidget {
  const InviteListView({Key? key}) : super(key: key);

  @override
  _InviteListViewState createState() => _InviteListViewState();
}

class _InviteListViewState extends State<InviteListView> {
  List<InviteDetail> invites = [];
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    invites.add(InviteDetail(
      name: 'Bill Rizer',
      designation: 'Planet Designer',
      profile: '../assets/icons/ic_avatar.svg',
      isInvited: false,
    ));
    invites.add(InviteDetail(
        name: "Bill Rizer",
        designation: "Planet Designer",
        profile: "../assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: "Konami",
        designation: "Xenon Creator",
        profile: "../assets/icons/ic_avatar_3.svg",
        isInvited: true));
    invites.add(InviteDetail(
        name: "Hard Cops",
        designation: "Bill Rizer",
        profile: "../assets/icons/ic_avatar.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: "Rogue Corp",
        designation: "Lancy Neo",
        profile: "../assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: " Genbei Yagy ",
        designation: "Planet Designer",
        profile: "../assets/icons/ic_avatar_3.svg",
        isInvited: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContraColor.lightening_yellow,
      appBar: ContraAppBar(
        backgroundColor: ContraColor.lightening_yellow,
        height: 118,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ContraIconCircleButton(
                    size: 48,
                    onPressed: () {},
                    icon: SvgPicture.asset('../assets/icons/arrow_back.svg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                  text: 'Friends',
                  fontSize: 35,
                  alignment: Alignment.bottomCenter,),
            ),
            Expanded(
                child: SizedBox(
              width: 20,
            )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 24),
              child: ContraSearchTextField(
                hintText: 'Search with love...',
                enable: true,
                suffixIcon: SvgPicture.asset('../assets/icons/ic_search.svg'),
                onPressed: () {},
                controller: _textController,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(24),
              physics: NeverScrollableScrollPhysics(),
              itemCount: invites.length,
              itemBuilder: (BuildContext context, int index) {
                return InviteListItem(inviteDetail: invites[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
