import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  TextStyles._();

  static const titleTextStyle = TextStyle(
    // fontSize: 12,
    overflow: TextOverflow.ellipsis,
    fontSize: 14,
    fontFamily: AssetsFontFamily.bitter900,
    color: AppColor.black,
  );
  static const dateTextStyle = TextStyle(
    // fontSize: 10,
    fontSize: 15,
    fontFamily: AssetsFontFamily.bitter300,
    color: AppColor.black87,
  );
  static const hintTextStyle = TextStyle(
    // fontSize: 10,
    fontSize: 8,
    height: 1,
    letterSpacing: -0.2,
    fontFamily: AssetsFontFamily.bitter200,
    color: AppColor.black26,
  );
  static const formFieldTextStyle = TextStyle(
    // fontSize: 10,
    fontSize: 12,
    height: 1,
    // letterSpacing: -0.2,
    fontFamily: AssetsFontFamily.bitter700,
    color: AppColor.black,
  );

  static const categoryTextStyle = TextStyle(
    color: AppColor.red2,
    fontFamily: AssetsFontFamily.bitter300,
    fontSize: 10,
  );
  static const errorTextStyle = TextStyle(
    color: AppColor.redDeep,
    height: 1.5 ,
    fontFamily: AssetsFontFamily.bitter900,
    fontSize: 17,
    wordSpacing: 0.5,
  );
  static const settingsTitlesTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColor.black54,
    fontFamily: AssetsFontFamily.bitter900,
    letterSpacing: 1.0,
  );
  static const codeSettingsTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColor.black54,
    fontFamily: AssetsFontFamily.bitter900,
    letterSpacing: 1.0,
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
