import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/pages/add_card.dart';
import 'package:sendi_app_deliver/src/pages/delivery_confirmed.dart';
import 'package:sendi_app_deliver/src/pages/home_page.dart';
import 'package:sendi_app_deliver/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(Colors.blue),
  'homepage': (BuildContext context) => HomePage(),
  'add_card': (BuildContext context) => AddCard(),
  'delivery_confirmed': (BuildContext context) => DeliveryConfirmed()
};
