import 'package:flutter/material.dart';

class HouseholdItems extends StatelessWidget {
  //const CategoryHomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/household-items';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HouseholdItems(),
      settings: RouteSettings(name: routeName),
    );
  }

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
              "New shipment",
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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            "Furniture",
            style: _textStyle,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/furniture-ship');
          },
        ),
        Divider(),
        ListTile(
          title: Text(
            "Appliances",
            style: _textStyle,
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Home Electronic", style: _textStyle),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Outdoor equipment", style: _textStyle),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Antiques", style: _textStyle),
          onTap: () {},
        )
      ],
    );
  }
}
