import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme = ThemeData(
  dividerTheme: DividerThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 20,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.grey.shade600,
    selectedItemColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.grey.shade600,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20,
    ),
    backgroundColor: Colors.grey.shade600,
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.grey.shade600,
  textTheme: TextTheme(
    bodyLarge:  TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  dividerTheme: DividerThemeData(
    color: Colors.black,
  ),
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 20,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.pink,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 20,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 20,
    ),
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge:  TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
);