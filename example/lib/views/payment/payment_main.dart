import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/payment/payment_views/payment_type_one.dart';
import 'package:example/views/payment/payment_views/payment_type_three.dart';
import 'package:example/views/payment/payment_views/payment_type_two.dart';
import 'package:flutter/material.dart';

class PaymentMainView extends StatelessWidget {
  const PaymentMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Payment View Type One'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaymentViewTypeOne()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Payment View Type Two'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentViewTypeTwo()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Payment View Type Three'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentViewTypeThree()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
