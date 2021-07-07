import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  static const String routeName = '/MyAccount';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MyAccountScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAccount Screen"),
      ),
      body: Center(
        child: Text("MyAccount Form"),
      ),
    );
  }
}
