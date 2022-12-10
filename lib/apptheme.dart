import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundLightColor = Color(0xFFDFECDB);
  static const Color backRoundDarkColor = Color(0xFF060E1E);
  static const Color primaryColor = Color(0xFF5D9CEC);
  static const Color green = Color(0xFF61E757);
  static const Color red = Color(0xFFEC4B4B);
  static const Color grey = Color(0xFFC8C9CB);
  static const Color black = Color(0xFF363636);
  static const Color white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundLightColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      primaryTextTheme: const TextTheme(
          // Title font
          titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: white),

          // To do tasks titles
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: black,
          ),

          titleSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          )
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: primaryColor,
        unselectedItemColor: grey,
        elevation: 0,
      ));
}
