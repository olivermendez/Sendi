import 'package:flutter/material.dart';

class AddVehicleScreen extends StatelessWidget {
  static const String routeName = '/add-vehicle';

  static const String id = 'car-form';

  final _formKey = GlobalKey<FormState>();

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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Information',
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Vehicle Brand',
                  hintText: 'Example: Toyota',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Model',
                  hintText: 'Example: Camry',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Year',
                  hintText: 'Example: 2018',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'License Plate',
                  hintText: 'Your Licence',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Color',
                  hintText: 'Example: Black',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Type: Motor/Car/Truck',
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Accept"),
                    style: ButtonStyle(enableFeedback: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/vehicle-management');
                      },
                      child: Text("Go to Vehicle Management"),
                      style: ButtonStyle(enableFeedback: true),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
