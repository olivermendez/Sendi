import 'package:flutter/material.dart';

class FurnitureShipment extends StatefulWidget {
  //const FurnitureShipment({Key? key}) : super(key: key);

  static const String routeName = '/furniture-ship';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => FurnitureShipment(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _FurnitureShipmentState createState() => _FurnitureShipmentState();
}

class _FurnitureShipmentState extends State<FurnitureShipment> {
  String? _chosenValue;
  String? _chosenValue2;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List a shipment"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: forms(),
        ));
  }

  Widget dimension() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            decoration: InputDecoration(labelText: 'Length'),
          )),
          Expanded(
              child: TextField(
            decoration: InputDecoration(labelText: 'Width'),
          )),
          Expanded(
              child: TextField(
            decoration: InputDecoration(labelText: 'Height'),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 26.0),
            child: dropdownDimension(),
          ),
        ],
      ),
    );
  }

  Widget dropdownDimension() {
    return DropdownButton<String>(
      focusColor: Colors.white,
      value: _chosenValue,
      //elevation: 5,
      style: TextStyle(color: Colors.white),
      iconEnabledColor: Colors.black,
      items: <String>[
        'in',
        'cm',
        //'Flutter',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      hint: Text(
        "in",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      onChanged: (value) {
        setState(() {
          _chosenValue = value.toString();
        });
      },
    );
  }

  Widget forms() {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              //icon: const Icon(Icons.arrow_forward),
              hintText: 'What type of furniture? i.e couch, chair',
              labelText: 'furniture type',
            ),
          ),
          dimension(),
          weightDimension(),
          TextFormField(
            decoration: const InputDecoration(
              //icon: const Icon(Icons.phone),
              //hintText: 'Quantity',
              labelText: 'Quantity',
            ),
          ),
          pickuoLocation(),
          Container(
              padding: const EdgeInsets.only(left: 150.0, top: 30.0),
              child: new ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {},
              )),
        ],
      ),
    );
  }

  Widget weightDimension() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            decoration: InputDecoration(labelText: 'Weight'),
          )),
          weigthDropdown(),
        ],
      ),
    );
  }

  Widget pickuoLocation() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Text(
            "Pickup Location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'City or Zip',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "Delivery Location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'City or Zip',
            ),
          )
        ],
      ),
    );
  }

  Widget weigthDropdown() {
    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: DropdownButton<String>(
        focusColor: Colors.white,
        value: _chosenValue2,
        //elevation: 5,
        style: TextStyle(color: Colors.white),
        iconEnabledColor: Colors.black,
        items: <String>[
          'lbs',
          'kg',
          //'Flutter',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.black),
            ),
          );
        }).toList(),
        hint: Text(
          'lbs',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        onChanged: (value) {
          setState(() {
            _chosenValue2 = value.toString();
          });
        },
      ),
    );
  }
}
