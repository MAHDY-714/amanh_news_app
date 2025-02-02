import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: TextStyles.categoryTextStyle,
      titleMedium: TextStyles.titleTextStyle,
      titleSmall: TextStyles.dateTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.hintTextStyle,
      suffixIconColor: AppColor.greyColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.redDeep,
    ),
  );
}
