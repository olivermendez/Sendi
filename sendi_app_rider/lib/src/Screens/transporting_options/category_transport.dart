import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/transporting_options/category_transport_model.dart';

class CategoryTransport extends StatefulWidget {
  //CategoryTransport({Key? key}) : super(key: key);

  static const String routeName = '/category-select';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CategoryTransport(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _CategoryTransportState createState() => _CategoryTransportState();
}

class _CategoryTransportState extends State<CategoryTransport> {
  final allChecked = CategoryTransportCheckBoxModel(title: 'All Categories');
  final optionsList = [
    CategoryTransportCheckBoxModel(title: 'Household Goods'),
    CategoryTransportCheckBoxModel(title: 'Household & Office Moves'),
    CategoryTransportCheckBoxModel(title: 'Vehicles'),
    CategoryTransportCheckBoxModel(title: 'Motorcycles & Power Sports'),
    CategoryTransportCheckBoxModel(title: 'Boats'),
    CategoryTransportCheckBoxModel(title: 'Heavy Equipment'),
    CategoryTransportCheckBoxModel(title: 'Pets'),
    CategoryTransportCheckBoxModel(title: 'Horses & Livestock'),
    CategoryTransportCheckBoxModel(title: 'Special Care Items'),
    CategoryTransportCheckBoxModel(title: 'Business & Industrial Goods'),
    CategoryTransportCheckBoxModel(title: 'Food & Agricultural Goods'),
  ];

  bool? value = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('What will you be transporting?'),
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

  onAllClicked(CategoryTransportCheckBoxModel options) {
    final newValue = !options.value;
    setState(() {
      options.value = newValue;
      optionsList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CategoryTransportCheckBoxModel options) {
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
            Navigator.pushNamed(context, '/my-account-register');
          },
          child: Text('Continue')),
    );
  }
}
