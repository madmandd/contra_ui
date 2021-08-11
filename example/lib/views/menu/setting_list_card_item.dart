import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/menu/settings.dart';
import 'package:flutter/material.dart';

class SettingsListCardItem extends StatelessWidget {
  final SettingCardDetail detail;
  const SettingsListCardItem({Key? key, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24.0),
      child: Column(
        children: [
          ContraText(
            text: detail.title,
            fontSize: 24,
            textColor: ContraColor.trout,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            height: 220,
            decoration: ShapeDecoration(
                color: detail.backgroundColor,
                shadows: [
                  BoxShadow(
                    color: ContraColor.wood_smoke,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  side: BorderSide(width: 2, color: detail.borderColor),

                )),
            child: ListView.builder(
              itemCount: detail.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: ContraColor.lightening_yellow,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ContraText(
                          text: detail.items[index].title,
                          textAlign: TextAlign.left,
                          fontSize: 17,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: ContraColor.wood_smoke,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
