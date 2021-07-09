import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  // This widget is the root of your application.

  final styleText = TextStyle(fontSize: 30.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Delivery app", style: styleText),
      ),
    );
  }
}
