import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/components/drawer/list_tile/list_tile.dart';
import 'package:sendi_app_deliver/src/components/drawer/model/model.dart';

class MyDrawer extends StatelessWidget {
  //const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [userAccountsDrawerHeader(), titesBuilder()],
      ),
    );
  }
}
