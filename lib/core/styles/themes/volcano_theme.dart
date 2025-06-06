import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData volcanoTheme(context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.transparent,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.redDeep8,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    applyElevationOverlayColor: false,
    primaryColor: AppColor.white24,
    hoverColor: AppColor.redDeep6,
    dividerColor: AppColor.white24,
    indicatorColor: AppColor.redDeep4,
    disabledColor: AppColor.white38,
    cardColor: AppColor.redDeep5,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.white24, //    border Button Color In Settings Screen
      onPrimary: AppColor.redDeep10, // shadow Button Color In Settings Screen
      secondary:
          AppColor.redDeep7, //  button Lower Layer Color In Settings Screen
      onSecondary:
          AppColor.black38, // button Upper Layer Color In Settings Screen
      surface: AppColor.white38, // icon Color In Settings Screen
      onSurface: AppColor.redDeep3, //  icon Mode Color In Settings Screen
      error: AppColor.white54, //border about body color In Settings Screen
      onError:
          AppColor.redDeep10, //background about body color In Settings Screen
    ),
    textTheme: TextTheme(
      titleLarge: TextStyles.categoryTextStyle.copyWith(
        color: AppColor.white70,
      ),
      titleMedium: TextStyles.titleTextStyle.copyWith(
        color: AppColor.white80,
      ),
      titleSmall: TextStyles.dateTextStyle.copyWith(
        color: AppColor.white38,
      ),
      displayLarge: TextStyles.settingsTitlesTextStyle.copyWith(
        color: AppColor.white70,
      ),
      displayMedium: TextStyles.formFieldTextStyle.copyWith(
        color: AppColor.white70,
      ),
      labelLarge: TextStyles.codeSettingsTextStyle.copyWith(
        color: AppColor.white70,
      ),
      labelMedium: TextStyles.errorTextStyle.copyWith(
        color: AppColor.white24,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hintTextStyle.copyWith(
        color: AppColor.white38,
      ),
      suffixIconColor: AppColor.white70,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColor.white38,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColor.white54,
          width: 2.0,
        ),
      ),
      fillColor: AppColor.black12,
      filled: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.white80,
      foregroundColor: AppColor.redDeep,
      hoverColor: AppColor.redDeep4,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColor.redDeep7,
        selectedItemColor: AppColor.red,
        unselectedItemColor: AppColor.redDeep11,
        selectedIconTheme: const IconThemeData(color: AppColor.white54)),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      circularTrackColor: AppColor.redDeep8,
      color: AppColor.redDeep11,
    ),
  );
}
