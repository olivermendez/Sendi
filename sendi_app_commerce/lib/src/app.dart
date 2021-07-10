import 'package:flutter/material.dart';

import 'package:sendi_app_commerce/config/routes/routes_app.dart';
import 'package:sendi_app_commerce/config/theme/custom_deliver_theme.dart';
import 'package:sendi_app_commerce/src/pages/pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeRider(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: WelcomeScreen.routeName,
      //home: PageView(
      //children: [WelcomeScreen(), PhoneEntry(), LoginScreen(), NavScreen()],
      //),
    );
  }
}
