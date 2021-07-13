import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/active_event/active_send.dart';
import 'package:sendi_app_deliver/src/Screens/package_sended/package_sended_screen.dart';
import 'package:sendi_app_deliver/src/components/components.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  textStyle() {
    return TextStyle(color: Colors.white, fontSize: 30.0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.verified_user),
                text: 'Active',
              ),
              Tab(
                icon: Icon(Icons.done_all),
                text: 'Sended',
              ),
              Tab(
                icon: Icon(Icons.phone_android),
                text: 'Draft',
              ),
            ],
          ),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          children: <Widget>[
            MyActivePackage(),
            PackageSendedScreen(),
            PackageSendedScreen(),
          ],
        ),
      ),
    );
    //bottomNavigationBar: CustomNavBar());
  }
}
