import 'package:flutter/material.dart';

class CategoryHomeScreen extends StatelessWidget {
  //const CategoryHomeScreen({Key? key}) : super(key: key);

  final _textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Text(
              "Hi, Oliver Mendez",
            ), // hides leading widget
          )),
      body: CategoryOptions(textStyle: _textStyle),
    );
  }
}

class CategoryOptions extends StatelessWidget {
  CategoryOptions({
    Key? key,
    required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final TextStyle _textStyle;

  final _subtitleStyle = TextStyle(fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 0.0, bottom: 10),
          child: Text("What do you want to ship?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          title: Text(
            "Vehicle & Boats",
            style: _textStyle,
          ),
          subtitle: Text(
            "Cars, Motorcycles, RVs, Trailers, Parts",
            style: _subtitleStyle,
          ),
          leading: Icon(
            Icons.directions_car,
            size: 40,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text(
            "Household items",
            style: _textStyle,
          ),
          subtitle: Text(
            "Furnitures, Applicances",
            style: _subtitleStyle,
          ),
          leading: Icon(
            Icons.kitchen,
            size: 40,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Moves", style: _textStyle),
          subtitle: Text(
            "Apartment, Home, Office",
            style: _subtitleStyle,
          ),
          leading: Icon(
            Icons.devices_other,
            size: 40,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Animals", style: _textStyle),
          subtitle: Text(
            "Dogs, Cats, Livestock",
            style: _subtitleStyle,
          ),
          leading: Icon(
            Icons.pets,
            size: 40,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Other", style: _textStyle),
          subtitle: Text(
            "Hay Bales, Waterslides, Jacuzzi, Etc",
            style: _subtitleStyle,
          ),
          leading: Icon(
            Icons.card_giftcard,
            size: 40,
          ),
          onTap: () {},
        )
      ],
    );
  }
}
