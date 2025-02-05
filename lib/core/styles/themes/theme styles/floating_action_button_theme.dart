import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class FloatingActionButtonThemeApp extends ThemeApp {
  static backgroundFloatingButtonThemeApp(context) =>
      Theme.of(context).floatingActionButtonTheme.backgroundColor;
  static iconFloatingButtonThemeApp(context) =>
      Theme.of(context).floatingActionButtonTheme.foregroundColor;
  static borderColorFloatingButtonThemeApp(context) =>
      Theme.of(context).floatingActionButtonTheme.hoverColor;
}
