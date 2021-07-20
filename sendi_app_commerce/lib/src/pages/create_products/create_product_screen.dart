import 'package:flutter/material.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({Key? key}) : super(key: key);

  static const String routeName = '/create';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CreateProduct(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
