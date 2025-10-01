import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF4C5BF4),
    secondary: Color(0xFF4C5BF4),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    error: Color(0xFFC43030),
    onError: Colors.white,
    surface: Color(0xFFEDEDED),
    onSurface: Color(0xFF111111),
    primaryContainer: Color(0xFFCACACA),
    onPrimaryContainer: Color(0xFF111111),
  ),
  textTheme: TextTheme(
    displayMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat',
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontSize: 64,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFCACACA), // Using primaryContainer color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    labelStyle: TextStyle(
      fontFamily: 'Montserrat',
      color: Color(0xFF111111), // Using onPrimaryContainer color
    ),
    floatingLabelBehavior:
        FloatingLabelBehavior.never, // Label disappears when typing
  ),
);
