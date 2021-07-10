import 'package:flutter/material.dart';

class VehicleManagementScreen extends StatelessWidget {
  //const VehicleManagementScreen({Key? key}) : super(key: key);

  static const String routeName = '/vehicle-management';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => VehicleManagementScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Management"),
      ),
      body: vehicleCard(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 29,
        ),
        backgroundColor: Colors.blue,
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget vehicleCard() {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            onTap: () {},
            trailing: Icon(Icons.edit),
            enableFeedback: true,
            leading: Icon(Icons.drive_eta, size: 50),
            title: Text('Toyota Camry'),
            subtitle: Text('2018'),
          ),
        ],
      ),
    );
  }
}
