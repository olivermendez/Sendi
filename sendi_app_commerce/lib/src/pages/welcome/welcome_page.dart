import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/phone_verfication/continue_with_phone.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';
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
    final String _appName = "Delivery App";

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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
            child: Text(
              "go inside",
              style: _buttonStyle,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContinueWithPhone()));
            },
          )
        ],
      ),
    );
  }
}
