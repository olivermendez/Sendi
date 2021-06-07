import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola Mark'),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.menu),
          ),
        ),
        body: Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
