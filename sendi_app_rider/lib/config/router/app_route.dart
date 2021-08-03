import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/add_card_payments/add_card_screen.dart';
import 'package:sendi_app_deliver/src/Screens/add_vehicle/add_vehicle_screen.dart';
import 'package:sendi_app_deliver/src/Screens/carrierTrailerTypes/carrier_trailer_types.dart';
import 'package:sendi_app_deliver/src/Screens/continue_with_phone/continue_with_phone.dart';
import 'package:sendi_app_deliver/src/Screens/home/home_screen.dart';
import 'package:sendi_app_deliver/src/Screens/myaccount.dart';
import 'package:sendi_app_deliver/src/Screens/product_details/product_details.screen.dart';
import 'package:sendi_app_deliver/src/Screens/screens.dart';
import 'package:sendi_app_deliver/src/Screens/transporting_options/category_transport.dart';
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
      case ContinueWithPhone.routeName:
        return ContinueWithPhone.route();
      case VehicleManagementScreen.routeName:
        return VehicleManagementScreen.route();
      case AddCardScreen.routeName:
        return AddCardScreen.route();
      case CarrierTrailerTypes.routeName:
        return CarrierTrailerTypes.route();
      case CategoryTransport.routeName:
        return CategoryTransport.route();
      case MyAccount.routeName:
        return MyAccount.route();

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
