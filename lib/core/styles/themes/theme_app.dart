import 'package:amanh_news_app/core/styles/themes/dark_theme.dart';
import 'package:amanh_news_app/core/styles/themes/light_theme.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

abstract class ThemeApp {
  ThemeApp_();
  static ThemeData lightThemeMode(context) => lightTheme(context);

  static ThemeData darkThemeMode(context) => darkTheme(context);

  static ThemeMode getThemeMode(context) =>
      kMode ? ThemeMode.dark : ThemeMode.light;

  static noBodyIconColorThemeApp(context) => Theme.of(context).primaryColor;
  static backgroundNewsItemColorThemeApp(context) =>
      Theme.of(context).hoverColor;
  static backgroundImageNewsItemColorThemeApp(context) =>
      Theme.of(context).cardColor;
  static borderNewsItemColorThemeApp(context) => Theme.of(context).dividerColor;

  static borderItemSelectThemeColorThemeApp(context, {required isActive}) =>
      isActive
          ? Theme.of(context).indicatorColor
          : Theme.of(context).disabledColor;
  
}
