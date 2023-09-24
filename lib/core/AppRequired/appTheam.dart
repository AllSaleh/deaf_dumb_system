import 'package:deaf_dumb_system/core/AppRequired/appcolore.dart';
import 'package:flutter/material.dart';

ThemeData arabicTheam = ThemeData(
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black, size: 25)),
    fontFamily: 'Roboto',
    primaryColor: Appcolors.primColore);
ThemeData englishTheam = ThemeData(
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black, size: 25)),
    primaryColor: Colors.black);
