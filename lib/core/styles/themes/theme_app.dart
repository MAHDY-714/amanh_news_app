import 'package:amanh_news_app/core/styles/themes/dark_theme.dart';
import 'package:amanh_news_app/core/styles/themes/light_theme.dart';
import 'package:flutter/material.dart';

abstract class ThemeApp {
  static ThemeData lightThemeMode(context) => lightTheme(context);

  static ThemeData darkThemeMode(context) => darkTheme(context);

  static noBodyIconColorThemeApp(context) => Theme.of(context).primaryColor;
}
