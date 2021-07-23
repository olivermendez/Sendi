import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  static const String routeName = '/my-account';

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
        title: Text("My Account"),
      ),
    );
  }
}
