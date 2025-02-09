import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class TextThemeApp extends ThemeApp {
  TextThemeApp._();
  static themeNameCategory(context, {required bool isActive}) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: isActive
                ? AssetsFontFamily.bitter900
                : AssetsFontFamily.bitter600,
            fontSize: kWidthConditionsFonts(
              context,
              isConditions: isActive,
              fontSizeLargeTrue: 13.0,
              fontSizeLargeFalse: 18.0,
              fontSizeSmallTrue: 9.0,
              fontSizeSmallFalse: 13.0,
            ),
          );
  static themeTitleNews(context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: kWidthConditions(context,
                valueIsTrue: 11.0, valueIsFalse: 14.0),
          );
  static themeDateNews(context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize:
                kWidthConditions(context, valueIsTrue: 9.0, valueIsFalse: 12.0),
          );
}
