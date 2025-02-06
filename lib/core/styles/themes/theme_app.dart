import 'package:amanh_news_app/core/styles/themes/dark_theme.dart';
import 'package:amanh_news_app/core/styles/themes/light_theme.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

abstract class ThemeApp {
  static ThemeData lightThemeMode(context) => lightTheme(context);

  static ThemeData darkThemeMode(context) => darkTheme(context);

  static ThemeMode getThemeMode({required bool isDark}) {
    mode = isDark;
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  static noBodyIconColorThemeApp(context) => Theme.of(context).primaryColor;
  static backgroundNewsItemColorThemeApp(context) => Theme.of(context).hoverColor;
  static borderNewsItemColorThemeApp(context) => Theme.of(context).dividerColor;
}
