import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/components/drawer/avatar/avatar.dart';

Widget userAccountsDrawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: avatar(),
    accountName: accountName(),
    accountEmail: accountEmail(),
  );
}

Widget accountName() {
  return Text(
    "Pedro Julio D.",
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}

Widget accountEmail() {
  String email = '';
  return RichText(
    text: TextSpan(children: [
      TextSpan(
        text: 'Condutor',
      ),
      TextSpan(
        text: '\nmail@mail.com',
      ),
      //WidgetSpan(child: time)
    ]),
  );
}
