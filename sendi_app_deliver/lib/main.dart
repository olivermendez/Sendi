import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/screens/add_card.dart';
import 'package:sendi_app_deliver/src/screens/home_page.dart';
import 'package:sendi_app_deliver/src/screens/welcome_page.dart';

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
        children: <Widget>[WelcomePage(Colors.black), HomePage(), AddCard()],
      )),
    );
  }
}
