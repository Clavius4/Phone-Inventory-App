// utils/theme.dart
import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFF2F80ED);
  static const Color secondaryColor = Color(0xFF484C56);
  static const Color tertiaryColor = Color(0xFF21205A);
  static const Color quaternaryColor = Color(0xFF1E1E1E);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.secondaryColor,
    backgroundColor: AppColors.backgroundColor,
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: AppColors.tertiaryColor),
      bodyText2: TextStyle(color: AppColors.quaternaryColor),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: AppColors.secondaryColor,
      onSecondary: Colors.black,
      background: AppColors.backgroundColor,
      onBackground: Colors.black,
      surface: AppColors.backgroundColor,
      onSurface: Colors.black,
      error: Colors.red,
      onError: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.quaternaryColor,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.secondaryColor,
    backgroundColor: AppColors.quaternaryColor,
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: AppColors.backgroundColor),
      bodyText2: TextStyle(color: AppColors.secondaryColor),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: AppColors.secondaryColor,
      onSecondary: Colors.black,
      background: AppColors.quaternaryColor,
      onBackground: Colors.white,
      surface: AppColors.quaternaryColor,
      onSurface: Colors.white,
      error: Colors.red,
      onError: Colors.white,
    ),
  );
}
