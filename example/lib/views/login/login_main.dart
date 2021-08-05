import 'package:flutter/material.dart';
import './login_views/contact_us.dart';
import './login_views/login_type_one.dart';
import './login_views/login_type_two.dart';
import './login_views/login_type_three.dart';
import './login_views/login_type_four.dart';
import './login_views/signup_type_one.dart';
import './login_views/verification_type.dart';

class LoginMainView extends StatefulWidget {
  const LoginMainView({Key? key}) : super(key: key);

  @override
  _LoginMainViewState createState() => _LoginMainViewState();
}

class _LoginMainViewState extends State<LoginMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login MainView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Login type one'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => LoginTypeOne()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Login type two'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => LoginTypeTwo()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Login type three'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => LoginTypeThree()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Login type four'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => LoginTypeFour()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Login Verification'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => VerificationType()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Sign up type one'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => SignUpTypeOne()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20.0),
              trailing: Icon(Icons.navigate_next),
              title: Text('Contact us'),
              onTap: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => ContactUsForm()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
