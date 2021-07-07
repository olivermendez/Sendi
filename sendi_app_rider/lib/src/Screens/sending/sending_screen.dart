import 'package:flutter/material.dart';

class SendingScreen extends StatelessWidget {
  static const String routeName = '/sending';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => SendingScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sending Screen"),
      ),
      body: Center(
        child: Text("Sending Form"),
      ),
    );
  }
}
