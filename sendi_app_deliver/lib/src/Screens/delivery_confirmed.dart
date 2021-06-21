import 'package:flutter/material.dart';

class DeliveryConfirmed extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Delivery Confirmed',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
