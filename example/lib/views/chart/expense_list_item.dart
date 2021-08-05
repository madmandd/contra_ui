import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/chart/chart_model.dart';
import 'package:flutter/material.dart';

class ExpenseListItem extends StatelessWidget {
  final Expense expense;
  ExpenseListItem({Key? key, required this.expense}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Row(
        children: [
          ContraTextImage(
            text: expense.title!.substring(0, 1),
            size: 48,
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.time!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 21,
                    color: wood_smoke,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  expense.description!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: trout, fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              expense.time!,
              style: TextStyle(
                fontSize: 11,
                color: santas_gray_10,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
