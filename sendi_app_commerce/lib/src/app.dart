import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:sendi_app_commerce/src/pages/login/login_page.dart';
import 'package:sendi_app_commerce/src/components/navbar/nav_screen.dart';
import 'package:sendi_app_commerce/src/pages/phone_verfication/phone_number_verfication.dart';

import 'package:sendi_app_commerce/src/pages/welcome/welcome_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.white,
        //brightness: Brightness.dark,
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: Colors.red),
      ),
      home: PageView(
        children: [WelcomePage(), PhoneEntry(), LoginPage(), NavScreen()],
      ),
    );
  }
}