import 'package:flutter/material.dart';


class OnboardingMainView extends StatelessWidget {
  const OnboardingMainView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Type One'),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ()));
              },
            )
          ],
        ),
      ),

      
    );
  }
}