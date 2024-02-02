import 'package:flutter/material.dart';

class MyTheme {
  /// colors , dark mode , light mode
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);
  static Color primaryLight = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: blackColor),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w500, color: blackColor),
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: blackColor),
        // bodyMedium: TextStyle(
        //     fontSize: 25,
        //     fontWeight: FontWeight.w400,
        //     color: blackColor
        // ),
      ));
}
