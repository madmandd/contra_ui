import 'package:flutter/material.dart';

class ChartMainView extends StatelessWidget {
  const ChartMainView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data and Satistics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Bar Chart'),
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ));
              }
            )
          ],
        ),
      ),
      
    );
  }
}