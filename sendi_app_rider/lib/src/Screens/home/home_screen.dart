import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/find_shipments/find_shipments.dart';
import 'package:sendi_app_deliver/src/Screens/my_account/my_account_screen.dart';
import 'package:sendi_app_deliver/src/Screens/my_notifications/my_notifications.dart';
import 'package:sendi_app_deliver/src/Screens/my_shipments/my_shipments.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  textStyle() {
    return TextStyle(color: Colors.white, fontSize: 30.0);
  }

  int _selectedIndex = 0;

  final _screens = [
    FindShipments(),
    MyShipments(),
    MyNotifications(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: _screens
              .asMap()
              .map(
                (i, screen) => MapEntry(
                  i,
                  Offstage(offstage: _selectedIndex != i, child: screen),
                ),
              )
              .values
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search),
            label: 'Find',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            activeIcon: Icon(Icons.view_list),
            label: 'My Shipments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            activeIcon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon: Icon(Icons.settings),
            label: 'Account',
          ),
        ],
      ),
    );
    //bottomNavigationBar: CustomNavBar());
  }
}
