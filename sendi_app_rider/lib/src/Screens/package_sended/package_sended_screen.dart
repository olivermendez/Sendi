import 'package:flutter/material.dart';

class PackageSendedScreen extends StatelessWidget {
  //const PackageSendedScreen({Key? key}) : super(key: key);
  static const String routeName = '/package-sended';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => PackageSendedScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _packageSendedListView(context),
    );
  }

  ListView _packageSendedListView(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text("Small Package $index"),
          subtitle: Text(
            "December 19, 2019 at 10:26 pm",
          ),
          //leading: Icon(Icons.send_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, '/product-details');
          },
        );
      },
    );
  }
}
