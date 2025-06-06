import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme(context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.redDeep3,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    applyElevationOverlayColor: false,
    primaryColor: AppColor.redDeep,
    hoverColor: AppColor.white,
    dividerColor: AppColor.black26,
    indicatorColor: AppColor.red3,
    disabledColor: AppColor.black38,
    cardColor: AppColor.redDeep3,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      primary: AppColor.redDeep, //    border Button Color In Settings Screen
      onPrimary: AppColor.black45, // shadow Button Color In Settings Screen
      secondary:
          Color(0x22FF0000), //  button Lower Layer Color In Settings Screen
      onSecondary:
          AppColor.white70, // button Upper Layer Color In Settings Screen
      surface: AppColor.black54, // icon Color In Settings Screen
      onSurface: AppColor.black54, //  icon Mode Color In Settings Screen
      error: AppColor.black87, //border about body color In Settings Screen
      onError: AppColor.pink, //background about body color In Settings Screen
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyles.categoryTextStyle,
      titleMedium: TextStyles.titleTextStyle,
      titleSmall: TextStyles.dateTextStyle,
      displayLarge: TextStyles.settingsTitlesTextStyle,
      displayMedium: TextStyles.formFieldTextStyle,
      labelLarge: TextStyles.codeSettingsTextStyle,
      labelMedium: TextStyles.errorTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hintTextStyle,
      suffixIconColor: AppColor.black38,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColor.black38,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
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
      selectedItemColor: AppColor.pink3,
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
