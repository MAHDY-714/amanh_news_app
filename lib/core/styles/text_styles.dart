import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
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
}
