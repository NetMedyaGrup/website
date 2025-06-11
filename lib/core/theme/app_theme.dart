import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: CustomColor.primary,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: CustomColor.primary,
      secondary: CustomColor.accent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.accent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColor.primary,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
    fontFamily: 'Roboto',
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: CustomColor.primary,
    colorScheme: ThemeData.dark().colorScheme.copyWith(
      primary: CustomColor.primary,
      secondary: CustomColor.accent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.accent,
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColor.primary,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}
