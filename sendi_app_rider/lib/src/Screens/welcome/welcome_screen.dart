import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/Screens/welcome/auth_ui.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => WelcomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _textStyleH1 =
        Theme.of(context).textTheme.headline1?.copyWith(color: Colors.black);

    final _textStyleH3 =
        Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black);

    final _buttonStyle =
        Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white);

    final String _welcomeText = "Welcome to";
    final String _appName = "Rider App";

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(_welcomeText, style: _textStyleH3),
          ),
          Center(
            child: Text(_appName, style: _textStyleH1),
          ),
          SizedBox(
            height: 30,
          ),
          AuthUI(),
        ],
      ),
    );
  }
}
