import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/carrierTrailerTypes/checkboxmodel.dart';

class CarrierTrailerTypes extends StatefulWidget {
  //CarrierTrailerTypes({Key? key}) : super(key: key);

  static const String routeName = '/carrier-trailer-types';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CarrierTrailerTypes(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _CarrierTrailerTypesState createState() => _CarrierTrailerTypesState();
}

class _CarrierTrailerTypesState extends State<CarrierTrailerTypes> {
  final allChecked = CarrierTypeCheckBoxModel(title: 'All Equipment Types');
  final optionsList = [
    CarrierTypeCheckBoxModel(title: 'Dry Van'),
    CarrierTypeCheckBoxModel(title: 'Flatbed'),
    CarrierTypeCheckBoxModel(title: 'Lowboy'),
    CarrierTypeCheckBoxModel(title: 'Air Ride Van'),
    CarrierTypeCheckBoxModel(title: 'Auto Carrier'),
    CarrierTypeCheckBoxModel(title: 'Stretch Flatbed'),
    CarrierTypeCheckBoxModel(title: 'Van Double'),
  ];

  bool? value = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('What equipment will you use?'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => onAllClicked(allChecked),
              leading: Checkbox(
                value: allChecked.value,
                onChanged: (value) => onAllClicked(allChecked),
              ),
              title: Text(allChecked.title),
            ),
            Divider(),
            ...optionsList
                .map(
                  (item) => ListTile(
                    onTap: () => onItemClicked(item),
                    leading: Checkbox(
                      value: item.value,
                      onChanged: (value) => onItemClicked(item),
                    ),
                    title: Text(item.title),
                  ),
                )
                .toList(),
          ],
        ),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: botton(),
        )),
      );

  onAllClicked(CarrierTypeCheckBoxModel options) {
    final newValue = !options.value;
    setState(() {
      options.value = newValue;
      optionsList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CarrierTypeCheckBoxModel options) {
    final newValue = !options.value;
    setState(() {
      options.value = newValue;
      if (!newValue) {
        //no check full all => so not need checked allchecked
        allChecked.value = false;
      } else {
        //this is list checkbox checked full => so need checked allChecked
        final allListChecked = optionsList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }

  Widget botton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/category-select');
          },
          child: Text('Continue')),
    );
  }
}
