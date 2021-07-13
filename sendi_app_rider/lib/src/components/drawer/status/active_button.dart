import 'package:flutter/material.dart';

Widget timerWidget() {
  return Card(
    color: Colors.blue[800],
    child: ListTile(
      //contentPadding: EdgeInsets.only(left: 3),
      leading: leadingButton(),
    ),
  );
}

Widget leadingButton() {
  return Container(
    child: Icon(
      Icons.pause,
      color: Colors.white,
      size: 35,
    ),
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color: Colors.blue[700],
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
