import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/screens.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/home");
            break;
          case 1:
            Navigator.pushNamed(context, "/package-sended");
            break;
          case 2:
            Navigator.pushNamed(context, "/my-account");
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send_outlined),
          activeIcon: Icon(Icons.send),
          label: 'Sended',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_box_rounded),
          label: 'my-account',
        ),
      ],
    );
  }
}
