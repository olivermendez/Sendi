import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/components/components.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Home Page'),
          actions: [],
        ),
        drawer: MyDrawer());
    //bottomNavigationBar: CustomNavBar());
  }
}
