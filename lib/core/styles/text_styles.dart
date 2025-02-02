import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  TextStyles._();

  static const titleTextStyle = TextStyle(
    // fontSize: 12,
    fontSize: 16,
    fontFamily: AssetsFontFamily.platypi900,
    color: Colors.black,
  );
  static const dateTextStyle = TextStyle(
    // fontSize: 10,
    fontSize: 13,
    fontFamily: AssetsFontFamily.bitter300,
    color: Colors.black87,
  );
  static const hintTextStyle = TextStyle(
    // fontSize: 10,
    fontSize: 8,
    height: 1,
    letterSpacing: -0.2,
    fontFamily: AssetsFontFamily.bitter200,
    color: AppColor.greyColor,
  );

  static const categoryTextStyle = TextStyle(
    color: AppColor.red,
    fontFamily: AssetsFontFamily.bitter300,
    fontSize: 10,
  );
  static TextStyle categoryTextNameStyle(context, {required bool isActive}) {
    return TextStyle(
      fontFamily:
          isActive ? AssetsFontFamily.bitter400 : AssetsFontFamily.bitter300,
      fontSize: kWidthConditionsFonts(
        context,
        isConditions: isActive,
        fontSizeLargeTrue: 13.0,
        fontSizeLargeFalse: 16.0,
        fontSizeSmallTrue: 10.0,
        fontSizeSmallFalse: 12.0,
      ),
      // isActive ? 13 : 10,
    );
  }
}
