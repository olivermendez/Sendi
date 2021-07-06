import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/profile_page.dart';
import 'package:sendi_app_commerce/src/pages/home_page.dart';
import 'package:sendi_app_commerce/src/pages/send_page.dart';
import 'package:sendi_app_commerce/src/pages/sended_page.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    SendPage(),
    SendedPage(),
    ProfilePage(),
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
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_outlined),
            activeIcon: Icon(Icons.send),
            label: 'New Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_and_archive_rounded),
            activeIcon: Icon(Icons.send_and_archive_sharp),
            label: 'My Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            activeIcon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
