import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class ProgressIndicatorThemeApp extends ThemeApp {
  static progressIndicatorTrackColorTheme(context) =>
      Theme.of(context).progressIndicatorTheme.circularTrackColor!;
  static outlinedIndicatorColorTheme(context) =>
      Theme.of(context).progressIndicatorTheme.color!;
}
