import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/package_sended/package_sended_screen.dart';

class MyTabBar extends StatelessWidget {
  //const MyTabBar({Key? key}) : super(key: key);

  textStyle() {
    return TextStyle(color: Colors.white, fontSize: 30.0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Widget"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.cake)),
              Tab(icon: Icon(Icons.android)),
              Tab(icon: Icon(Icons.phone_android)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PackageSendedScreen(),
            PackageSendedScreen(),
            PackageSendedScreen(),
          ],
        ),
      ),
    );
  }
}
