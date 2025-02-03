import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class InputDecorationThemeApp extends ThemeApp {
  InputDecorationThemeApp._();
  static enabledBorderTheme(context) =>
      Theme.of(context).inputDecorationTheme.enabledBorder;
  static focusedBorderTheme(context) =>
      Theme.of(context).inputDecorationTheme.focusedBorder;
  static formFieldColorTheme(context) =>
      Theme.of(context).inputDecorationTheme.fillColor;

  static suffixIconColorTheme(context) => Theme.of(context).inputDecorationTheme.suffixIconColor;    
  static themeHintStyle(context) =>
      Theme.of(context).inputDecorationTheme.hintStyle!.copyWith(
            fontSize: kWidthConditions(
              context,
              valueIsTrue: 10.0,
              valueIsFalse: 12.0,
            ),
          );
}

/**
  * enabledBorder
  * focusedBorder
  * fillColor
 */
