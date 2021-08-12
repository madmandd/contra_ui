import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/content/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InviteListItem extends StatelessWidget {
  final InviteDetail inviteDetail;

  const InviteListItem({Key? key, required this.inviteDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(
        color: ContraColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              inviteDetail.profile,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  inviteDetail.name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 21,
                    color: ContraColor.wood_smoke,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  inviteDetail.designation,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ContraColor.trout,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ContraButton(
            height: 36,
            width: 90,
            text: inviteDetail.isInvited ? "Invited" : "Invite",
            onPrimaryColor: inviteDetail.isInvited ? ContraColor.white : ContraColor.wood_smoke,
            primaryColor: inviteDetail.isInvited ? ContraColor.wood_smoke : ContraColor.lightening_yellow,
            onPressed: () {
              
            },
            
          )
        ],
      ),
    );
  }
}
