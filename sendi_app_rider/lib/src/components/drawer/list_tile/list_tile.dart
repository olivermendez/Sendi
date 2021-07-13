import 'package:flutter/material.dart';

Widget titesBuilder() {
  return Flexible(
    child: ListView(
      children: [
        _createDrawerItem(icon: Icons.moped, text: 'Tus Viajes', onTap: () {}),
        _createDrawerItem(icon: Icons.credit_card, text: 'Pago', onTap: () {}),
        _createDrawerItem(
            icon: Icons.manage_accounts, text: 'Configuracions', onTap: () {}),
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