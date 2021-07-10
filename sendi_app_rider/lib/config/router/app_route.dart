import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/add_vehicle/add_vehicle_screen.dart';
import 'package:sendi_app_deliver/src/Screens/home/home_screen.dart';
import 'package:sendi_app_deliver/src/Screens/product_details/product_details.screen.dart';
import 'package:sendi_app_deliver/src/Screens/screens.dart';
import 'package:sendi_app_deliver/src/Screens/vehicle_management/vehicle_management.dart';

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
      case MyAccountScreen.routeName:
        return MyAccountScreen.route();
      case PackageSendedScreen.routeName:
        return PackageSendedScreen.route();
      case ProductDetailsScreen.routeName:
        return ProductDetailsScreen.route();
      case AddVehicleScreen.routeName:
        return AddVehicleScreen.route();

      case VehicleManagementScreen.routeName:
        return VehicleManagementScreen.route();

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
