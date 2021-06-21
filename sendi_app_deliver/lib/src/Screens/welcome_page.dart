import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final Color color;

  const WelcomePage(this.color);
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(fontSize: 30, color: Colors.white);

    return Container(
      child: Center(
        child: Text(
          'deliver zone',
          style: estilo,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      color: this.color,
    );
  }
}
