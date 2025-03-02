import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class NavBarThemeApp extends ThemeApp {
  NavBarThemeApp._();

  static backgroundNavBarTheme(context) =>
      Theme.of(context).bottomNavigationBarTheme.backgroundColor;
  static selectItemColorNavBarTheme(context) =>
      Theme.of(context).bottomNavigationBarTheme.selectedItemColor;
  static borderColorNavBarDarkTheme(context) =>
      Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
  static borderColorNavBarLightTheme(context) =>
      Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;
  static iconColorNavBarTheme(context) =>
      Theme.of(context).bottomNavigationBarTheme.selectedIconTheme!.color!;
}
