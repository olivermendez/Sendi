import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/find_shipments/find_shipments.dart';
import 'package:sendi_app_deliver/src/Screens/my_notifications/my_notifications.dart';
import 'package:sendi_app_deliver/src/Screens/my_shipments/my_shipments.dart';
import 'package:sendi_app_deliver/src/Screens/screens.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
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
            icon: Icon(Icons.east),
            activeIcon: Icon(Icons.east),
            label: 'ship',
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
  }
}
