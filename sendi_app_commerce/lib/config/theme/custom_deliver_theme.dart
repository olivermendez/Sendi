import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeRider() {
  return ThemeData(
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(selectedItemColor: Colors.blue),
    primaryColor: Colors.cyan[900],
    primaryColorDark: Color(0xFFFC0028),
    primaryColorLight: Color(0xFFFE9AAA),
    //scaffoldBackgroundColor: Colors.white,
    //backgroundColor: Color(0xFFF5F5F5),
    //fontFamily: 'Lato',
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
