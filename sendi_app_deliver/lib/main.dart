import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/pages/welcome_page.dart';
import 'package:sendi_app_deliver/src/routes/routes.dart';
//import 'package:sendi_app_deliver/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'Deliver zone',
        initialRoute: 'homepage',
        routes: routes);
  }
}
