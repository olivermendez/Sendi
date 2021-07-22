import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/account/account_page.dart';
import 'package:sendi_app_commerce/src/pages/category_home/category_home.dart';
import 'package:sendi_app_commerce/src/pages/my_notifications/my_notifications.dart';
import 'package:sendi_app_commerce/src/pages/profile/profile_page.dart';
import 'package:sendi_app_commerce/src/pages/send/send_page.dart';
import 'package:sendi_app_commerce/src/pages/sended/sended_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomePage(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _screens = [
    CategoryHomeScreen(),
    MyShipments(),
    MyNotificationsScreen(),
    AccountScreen(),
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
