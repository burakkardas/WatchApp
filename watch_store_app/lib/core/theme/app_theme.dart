import 'package:flutter/material.dart';
import 'package:watch_store_app/core/theme/app_color.dart';

class AppTheme {
  static ThemeData get currentTheme => ThemeData(
        fontFamily: 'Raleway',
        primaryColor: AppColor.primaryColor,
        primaryColorDark: AppColor.primaryDarkColor,
        hintColor: AppColor.hintColor,
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: _inputDecorationTheme(),
        textTheme: _textTheme(),
      );

  static TextTheme _textTheme() {
    return TextTheme(
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.primaryDarkColor,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColor.primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColor.primaryDarkColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.primaryDarkColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.primaryDarkColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColor.primaryDarkColor,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
    );
  }

  static OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(
        color: AppColor.hintColor,
      ),
    );
  }
}
