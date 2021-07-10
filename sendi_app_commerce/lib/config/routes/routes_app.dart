import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/pages.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/welcome':
        return WelcomeScreen.route();
      case WelcomeScreen.routeName:
        return WelcomeScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("Page not found"),
              ),
            ),
        settings: RouteSettings(name: '/error'));
  }
}
