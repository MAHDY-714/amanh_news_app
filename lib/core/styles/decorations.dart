import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/input_decoration_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class Decorations {
  Decorations._();

  static BoxDecoration newsCategoryDecoration({required String image}) {
    return BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(16.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    );
  }

  static BoxDecoration imageInNewsItemBuilderBoxDecoration(context,
      {required String image}) {
    return BoxDecoration(
      color: Color(0xFF420504),
      border: BorderDirectional(
          bottom: BorderSide(
        color: ThemeApp.borderNewsItemColorThemeApp(context),
        width: 1.5,
      )),
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    );
  }

  static   InputDecoration InputFormFieldDecoration(context) {
    return InputDecoration(
        contentPadding: EdgeInsetsDirectional.symmetric(
            horizontal: 8,
            vertical: kHeightConditions(
              context,
              valueIsTrue: 8.0,
              valueIsFalse: 16.0,
            )),
        enabledBorder: InputDecorationThemeApp.enabledBorderTheme(context),
        focusedBorder: InputDecorationThemeApp.focusedBorderTheme(context),
        fillColor: InputDecorationThemeApp.formFieldColorTheme(context),
        hintText: 'Search for the news you care about',
        hintStyle: InputDecorationThemeApp.themeHintStyle(context),
        hintFadeDuration: Duration(seconds: 1),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Image(
                height: 25,
                width: 25,
                color: InputDecorationThemeApp.suffixIconColorTheme(context),
                image: AssetImage(
                  AssetsImages.searchIcon,
                ))));
  }

}
