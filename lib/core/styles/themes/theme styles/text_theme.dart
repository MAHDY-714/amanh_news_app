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
                : AssetsFontFamily.bitter400,
            fontSize: kWidthConditionsFonts(
              context,
              isConditions: isActive,
              fontSizeLargeTrue: 13.0, // small phone
              fontSizeLargeFalse: 15.0, // large  phone
              fontSizeSmallTrue: 13.0, // small phone
              fontSizeSmallFalse: 15.0, // large phone
            ),
          );
  static themeTitleNews(context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: kWidthConditions(context,
                valueIsTrue: 13.0, valueIsFalse: 14.0),
          );
  static themeDateNews(context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize:
                kWidthConditions(context, valueIsTrue: 9.0, valueIsFalse: 12.0),
          );
  static themeTitleTextInSettings(context) =>
      Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: kWidthConditions(context,
                valueIsTrue: 20.0, valueIsFalse: 14.0),
          );
  static themeCodeInSettings(context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            fontSize: kWidthConditions(context,
                valueIsTrue: 18.0, valueIsFalse: 16.0),
          );

  static themTextError(context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            fontSize: kWidthConditions(context,
                valueIsTrue: 15.0, valueIsFalse: 17.0),
          );
}
