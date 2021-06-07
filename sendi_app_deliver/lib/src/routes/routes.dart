import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/pages/home_page.dart';
import 'package:sendi_app_deliver/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'homepage': (BuildContext context) => HomePage()
};
