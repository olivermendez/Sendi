import 'package:flutter/material.dart';

Widget avatar() {
  String url =
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260';
  return Container(
    child: CircleAvatar(
      backgroundImage: NetworkImage(url),
    ),
    decoration: BoxDecoration(
        color: Colors.white, shape: BoxShape.circle, border: Border.all()),
  );
}
