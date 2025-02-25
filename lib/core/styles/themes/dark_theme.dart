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
    indicatorColor: AppColor.redDeep3,
    disabledColor: AppColor.white12,
    cardColor: AppColor.redDeep5,
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
        borderSide: BorderSide(
          color: AppColor.white38,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColor.white90,
          width: 2.0,
        ),
      ),
      fillColor: AppColor.black26,
      filled: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.white80,
      foregroundColor: AppColor.redDeep,
      hoverColor: AppColor.redDeep4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColor.redDeep7,
        selectedItemColor: AppColor.red,
        unselectedItemColor: AppColor.redDeep10,
        selectedIconTheme: IconThemeData(color: AppColor.white54)),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: AppColor.redDeep8,
      color: AppColor.redDeep10,
    ),
  );
}
