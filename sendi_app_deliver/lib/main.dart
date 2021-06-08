import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/pages/add_card.dart';
import 'package:sendi_app_deliver/src/pages/home_page.dart';
import 'package:sendi_app_deliver/src/pages/welcome_page.dart';
import 'package:sendi_app_deliver/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView(
        children: <Widget>[
          WelcomePage(Colors.black),
          WelcomePage(Colors.red),
          WelcomePage(Colors.blue),
          AddCard(),
          HomePage()
        ],
      )),
    );
  }
}
