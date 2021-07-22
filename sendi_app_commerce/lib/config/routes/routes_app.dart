import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/create_products/create_product_screen.dart';
import 'package:sendi_app_commerce/src/pages/home/home_page.dart';
import 'package:sendi_app_commerce/src/pages/household_items/household_items.dart';
import 'package:sendi_app_commerce/src/pages/household_items/list_shipment/furniture_shipment.dart';
import 'package:sendi_app_commerce/src/pages/pages.dart';
import 'package:sendi_app_commerce/src/pages/phone_verfication/continue_with_phone.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/welcome':
        return WelcomeScreen.route();
      case WelcomeScreen.routeName:
        return WelcomeScreen.route();
      case ContinueWithPhone.routeName:
        return ContinueWithPhone.route();
      case CreateProduct.routeName:
        return CreateProduct.route();
      case HomePage.routeName:
        return HomePage.route();

      //Household routes
      case HouseholdItems.routeName:
        return HouseholdItems.route();
      case FurnitureShipment.routeName:
        return FurnitureShipment.route();

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
