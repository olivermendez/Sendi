import 'package:flutter/material.dart';

class AddVehicleScreen extends StatelessWidget {
  static const String routeName = '/add-vehicle';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => AddVehicleScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Vehicle Screen"),
      ),
      body: Center(
        child: Text("Add Vehicle Form"),
      ),
    );
  }
}
