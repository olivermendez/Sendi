import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomePage(),
      settings: RouteSettings(name: routeName),
    );
  }

  final _textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: false,
        title: Text('Hi, Oliver Mendez!'),
        //leading: Icon(Icons.menu),
      ),
      body: CategoryOptions(textStyle: _textStyle),
    );
  }
}

class CategoryOptions extends StatelessWidget {
  const CategoryOptions({
    Key? key,
    required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 0.0, bottom: 10),
          child: Text("What do you want to ship?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
        ),
        ListTile(
          title: Text(
            "Vehicle & Boats",
            style: _textStyle,
          ),
          subtitle: Text("Cars, Motorcycles, RVs, Trailers, Parts"),
          leading: Icon(Icons.car_rental),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Household items",
            style: _textStyle,
          ),
          subtitle: Text("Furnitures, Applicances"),
          leading: Icon(Icons.radio),
          onTap: () {},
        ),
        ListTile(
          title: Text("Moves", style: _textStyle),
          subtitle: Text("Apartment, Home, Office"),
          leading: Icon(Icons.devices_other),
          onTap: () {},
        ),
        ListTile(
          title: Text("Animals", style: _textStyle),
          subtitle: Text("Dogs, Cats, Livestock"),
          leading: Icon(Icons.pets),
          onTap: () {},
        ),
        ListTile(
          title: Text("Other", style: _textStyle),
          subtitle: Text("Hay Bales, Waterslides, Jacuzzi, Etc"),
          leading: Icon(Icons.car_rental),
          onTap: () {},
        )
      ],
    );
  }
}
