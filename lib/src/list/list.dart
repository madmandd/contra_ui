import 'package:flutter/material.dart';

class ContraListItem extends StatelessWidget {
  final List<String> list;

  const ContraListItem({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      reverse: false,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              Text(
                list[index].toString(),
                style: TextStyle(color: Colors.white, fontSize: 21),
              )
            ],
          ),
        );
      },
    );
  }
}
