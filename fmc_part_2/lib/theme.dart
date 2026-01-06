import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromARGB(255, 255, 135, 7);
  static Color primaryAccent = const Color.fromRGBO(255, 235, 0, 1);
  static Color secondaryColor = const Color.fromARGB(255, 50, 50, 50);
  static Color secondaryAccent = const Color.fromARGB(255, 25, 25, 25);
  static Color titleColor = const Color.fromARGB(255, 34, 34, 34);
  static Color textColor = const Color.fromARGB(255, 175, 175, 175);
  static Color successColor = const Color.fromARGB(255, 6, 255, 184);
  static Color highlightColor = const Color.fromARGB(255, 255, 0, 0); 
}

ThemeData primaryTheme = ThemeData(

  // seed
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
  ),

  // scaffold color
  scaffoldBackgroundColor: AppColors.secondaryAccent,

  // app bar theme colors
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

);
