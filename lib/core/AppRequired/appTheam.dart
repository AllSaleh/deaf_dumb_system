import 'package:flutter/material.dart';
import 'package:deaf_dumb_system/core/apprequired/appcolore.dart';

ThemeData arabicTheam = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffEEEEEE),
        elevation: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black, size: 25)),
    fontFamily: 'Cairo',
    primaryColor: Appcolors.primColore);
ThemeData englishTheam = ThemeData(
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black, size: 25)),
    primaryColor: Colors.black);

class Theames {
  static ThemeData dark = ThemeData.dark().copyWith(
      iconTheme: const IconThemeData(color: Colors.white),
      appBarTheme:const AppBarTheme(
          titleTextStyle: TextStyle(
              // backgroundColor: Colors.black.withOpacity(.5),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
          // color: Colors.black),
    ) , textTheme: const TextTheme(
        bodySmall: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
        bodyLarge: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
        bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
      ));

  static ThemeData light = ThemeData.light().copyWith(
    iconTheme:const IconThemeData(color: Colors.black),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffEEEEEE),
          elevation: 0,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black, size: 25)));
}
