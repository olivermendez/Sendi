import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/config/router/app_route.dart';
import 'package:sendi_app_deliver/config/theme/custom_rider_theme.dart';

import 'Screens/screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rider app',
      theme: themeRider(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
