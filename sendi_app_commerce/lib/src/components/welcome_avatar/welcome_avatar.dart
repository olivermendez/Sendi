import 'package:flutter/material.dart';

class WelcomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: Icon(
        Icons.moped,
        color: Colors.blue,
        size: 60,
      ),
    );
  }
}
