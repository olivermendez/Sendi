import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  static const String routeName = '/paymentmethod';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => PaymentMethodScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaymentMethod Screen"),
      ),
      body: Center(
        child: Text("PaymentMethod Form"),
      ),
    );
  }
}
