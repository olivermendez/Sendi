import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/home/home_screen.dart';
import 'package:sendi_app_deliver/src/Screens/screens.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return WelcomeScreen.route();
      case WelcomeScreen.routeName:
        return WelcomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Error Page"),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}
