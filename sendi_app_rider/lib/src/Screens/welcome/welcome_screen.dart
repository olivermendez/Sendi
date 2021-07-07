import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => WelcomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(fontSize: 30, color: Colors.black);

    return Scaffold(
      body: Center(
        child: Text(
          "Rider",
          style: estilo,
        ),
      ),
    );
  }
}
