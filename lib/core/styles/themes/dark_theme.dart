import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme(context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.transparent,
    brightness: Brightness.light,
    // applyElevationOverlayColor: false,
    // brightness: SystemUiOverlayStyle(
    //   statusBarColor: AppColor.redDeep,
    //   statusBarBrightness: Brightness.dark,
    // ).statusBarBrightness,
    primaryColor: AppColor.white38,
    hoverColor: AppColor.redDeep6,
    dividerColor: AppColor.white24,
    indicatorColor: AppColor.redDeep4,
    disabledColor: AppColor.white38,
    cardColor: AppColor.redDeep5,
    // colorScheme: ColorScheme(
    //   accentColor: AppColor.white12, //border color
    //   cardColor: AppColor.black12, //item Select color
    //   backgroundColor: AppColor.redDeep4, //row Language color
    //   errorColor: AppColor.black38,  // button Language color
    // ),

    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColor.white12, // border color
      onPrimary: AppColor.black12, // item Select color
      secondary: AppColor.redDeep4, //  row Language color
      onSecondary: AppColor.black38, // button Language color
      error: AppColor.white12,
      onError: AppColor.white12,
      surface: AppColor.white12,
      onSurface: AppColor.white12,
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
      displayLarge: TextStyles.settingsTextStyle.copyWith(
        color: AppColor.white80,
      ),
      displayMedium: TextStyles.formFieldTextStyle.copyWith(
        color: AppColor.white70,
      ),
      labelMedium: TextStyles.errorTextStyle.copyWith(
        color: AppColor.redDeep3,
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
          color: AppColor.white90,
          width: 2.0,
        ),
      ),
      fillColor: AppColor.black26,
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
