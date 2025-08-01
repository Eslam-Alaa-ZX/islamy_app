import 'package:flutter/material.dart';

class AppTheam {
  static Color primaryColor = Color(0xFFE2BE7F);
  static Color black = Color(0xFF202020);
  static Color white = Color(0xFFFFFFFF);

  static ThemeData appTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: black.withValues(alpha: 0.7),
      hintStyle: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      showUnselectedLabels: false,
      selectedItemColor: white,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.fixed,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      foregroundColor: primaryColor,
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: black,

    textTheme: TextTheme(
      labelMedium: TextStyle(
        color: white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: white,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
