import 'package:flutter/material.dart';

class SuperFloatingAction extends StatelessWidget {
  //const SuperFloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.send),
          backgroundColor: Colors.blue,
          onPressed: () {},
        ),
        FloatingActionButton(
          child: Icon(Icons.ac_unit),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
      ],
    );
  }
}
