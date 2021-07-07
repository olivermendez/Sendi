import 'package:flutter/material.dart';

class CompanyDetailsScreen extends StatelessWidget {
  static const String routeName = '/CompanyDetails';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CompanyDetailsScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CompanyDetails Screen"),
      ),
      body: Center(
        child: Text("CompanyDetails Form"),
      ),
    );
  }
}
