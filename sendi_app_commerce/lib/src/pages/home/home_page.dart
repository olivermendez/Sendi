import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFfcfcfc),
          title: Text(
            "Account",
            style: TextStyle(
              color: Color(0xFFfc6a26),
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.access_alarm,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.25,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(10.0),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          //color: Colors.red,
          child: Row(
            children: const <Widget>[
              Expanded(
                child: Text('Create Shipment', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
