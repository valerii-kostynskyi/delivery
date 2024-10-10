import 'package:dostavka/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  fontFamily: 'Inter',
  useMaterial3: true,
  primaryColor: AppColors.black,
  primaryColorLight: AppColors.lightGreen,
  primaryColorDark: AppColors.green,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  canvasColor: AppColors.white,
  cardColor: AppColors.white,
  dividerColor: AppColors.gray,
  focusColor: AppColors.green,
  hoverColor: AppColors.lightGreen,
  highlightColor: AppColors.lightGreen,
  hintColor: AppColors.hint,
  indicatorColor: AppColors.green,
  splashColor: AppColors.lightGreen,
  shadowColor: AppColors.black.withOpacity(0.08),
  dialogBackgroundColor: AppColors.white,
  disabledColor: AppColors.gray,
  secondaryHeaderColor: AppColors.yellowLight,
  unselectedWidgetColor: AppColors.hint,
  colorScheme: const ColorScheme(
    primary: AppColors.white,
    secondary: AppColors.blue,
    background: AppColors.scaffoldBackgroundColor,
    surface: AppColors.lightBlue,
    onSurface: AppColors.lightGreen,
    error: AppColors.error,
    onPrimary: AppColors.orange,
    onSecondary: AppColors.brown,
    onBackground: AppColors.lightBrown,
    onError: AppColors.lightRed,
    brightness: Brightness.light,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: AppColors.white,
    shape: CircularNotchedRectangle(),
    elevation: 10,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: AppColors.hint),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: AppColors.hint),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: AppColors.brown),
    ),
    hintStyle: const TextStyle(
      fontSize: 16,
      color: AppColors.hint,
    ),
    prefixStyle: const TextStyle(
      fontSize: 16,
      color: AppColors.hint,
    ),
    suffixIconColor: AppColors.hint,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.gray,
  ),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 34,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
  ),
);
