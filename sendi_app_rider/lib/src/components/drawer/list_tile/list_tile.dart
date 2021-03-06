import 'package:flutter/material.dart';

class TilesBuilder extends StatelessWidget {
  //const TilesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          _createDrawerItem(icon: Icons.moped, text: 'My Rides', onTap: () {}),
          _createDrawerItem(
              icon: Icons.local_activity, text: 'Promotion', onTap: () {}),
          _createDrawerItem(
              icon: Icons.credit_card,
              text: 'My payments',
              onTap: () {
                Navigator.pushNamed(context, '/add-card');
              }),
          _createDrawerItem(
              icon: Icons.manage_accounts,
              text: 'Configuracions',
              onTap: () {}),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData? icon, String? text, GestureTapCallback? onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text.toString(),
        style: TextStyle(fontSize: 20),
      ),
      onTap: onTap,
    );
  }
}
