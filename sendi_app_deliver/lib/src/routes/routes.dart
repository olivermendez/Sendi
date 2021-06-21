import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/screens/add_card.dart';
import 'package:sendi_app_deliver/src/screens/delivery_confirmed.dart';
import 'package:sendi_app_deliver/src/screens/home_page.dart';
import 'package:sendi_app_deliver/src/screens/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(Colors.blue),
  'homepage': (BuildContext context) => HomePage(),
  'add_card': (BuildContext context) => AddCard(),
  'delivery_confirmed': (BuildContext context) => DeliveryConfirmed()
};
