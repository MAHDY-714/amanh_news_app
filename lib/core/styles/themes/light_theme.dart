import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColor.white,
    brightness: Brightness.dark,
    primaryColor: AppColor.redDeep,
    hoverColor: AppColor.white,
    dividerColor: AppColor.black26,
    indicatorColor: AppColor.red,
    disabledColor: AppColor.black26,
    cardColor: AppColor.redDeep3,
    textTheme: const TextTheme(
      titleLarge: TextStyles.categoryTextStyle,
      titleMedium: TextStyles.titleTextStyle,
      titleSmall: TextStyles.dateTextStyle,
      displayMedium: TextStyles.formFieldTextStyle,
      labelMedium: TextStyles.errorTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hintTextStyle,
      suffixIconColor: AppColor.black26,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColor.black26,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColor.redDeep,
          width: 2.5,
        ),
      ),
      fillColor: AppColor.white90,
      filled: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.white90,
      foregroundColor: AppColor.red2,
      hoverColor: AppColor.redDeep2,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.redDeep6,
      selectedItemColor: AppColor.pink2,
      unselectedItemColor: AppColor.redDeep,
      selectedIconTheme: const IconThemeData(
        color: AppColor.white,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      circularTrackColor: AppColor.redDeep,
      color: AppColor.white90,
    ),
  );
}

