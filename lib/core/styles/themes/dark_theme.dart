import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme(context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: AppColor.white54,
    textTheme: TextTheme(
      titleLarge: TextStyles.categoryTextStyle.copyWith(
        color: AppColor.white70,
      ),
      titleMedium: TextStyles.titleTextStyle.copyWith(
        color: AppColor.white70,
      ),
      titleSmall: TextStyles.dateTextStyle.copyWith(
        color: AppColor.white38,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hintTextStyle,
      suffixIconColor: AppColor.greyColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColor.greyColor,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColor.redDeep3,
          width: 2.5,
        ),
      ),
      fillColor: AppColor.formFieldColor,
      filled: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.backgroundHomeNavBar,
      foregroundColor: AppColor.redDeep3,
      hoverColor: AppColor.borderHomeNavBar,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColor.redDeep3.withValues(alpha: .06),
        // elevation: 10.0,
        selectedItemColor: AppColor.red,
        unselectedItemColor: const Color(0xFF750200).withValues(alpha: .06),
        selectedIconTheme: IconThemeData(color: AppColor.white54)),
  );
}
