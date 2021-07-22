import 'package:flutter/material.dart';

class MyNotificationsScreen extends StatelessWidget {
  const MyNotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: Text("Notifcation page"),
      ),
    );
  }
}
