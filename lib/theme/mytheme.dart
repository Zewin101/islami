import 'package:flutter/material.dart';
import 'package:islami/theme/myColors.dart';

class MyTheme {
  static ThemeData LightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 40,
          color: COLORS_BLACK,
          fontWeight: FontWeight.bold,

        ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 21,
        color: COLORS_BLACK,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //backgroundColor: COLORS_GOLD,
       //type: BottomNavigationBarType.fixed,
      unselectedItemColor:  COLORS_WHITE,
      selectedItemColor: COLORS_BLACK


    ),
  );


  //============================================================================
  static ThemeData DarkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
