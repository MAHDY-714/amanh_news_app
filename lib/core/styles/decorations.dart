import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/input_decoration_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

abstract class Decorations {
  Decorations._();

  static BoxDecoration newsCategoryDecoration({required String image}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    );
  }

  static BoxDecoration newsItemBuilderBoxDecorations(BuildContext context) {
    final backgroundNewsItemColor =
        ThemeApp.backgroundNewsItemColorThemeApp(context);
    final borderNewsItemColor = ThemeApp.borderNewsItemColorThemeApp(context);
    return BoxDecoration(
      // color: AppColor.white,
      color: backgroundNewsItemColor,
      border: Border.all(
        color: borderNewsItemColor,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(16.0),
    );
  }

  static BoxDecoration imageInNewsItemBuilderBoxDecoration(
    context,
  ) {
    return BoxDecoration(
      color: AppColor.redDeep4,
      border: BorderDirectional(
          bottom: BorderSide(
        color: ThemeApp.borderNewsItemColorThemeApp(context),
        width: 1.5,
      )),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  static InputDecoration inputFormFieldDecoration(
    context, {
    void Function()? onPressed,
  }) {
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
        hintFadeDuration: const Duration(seconds: 1),
        suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Image(
                height: 25,
                width: 25,
                color: InputDecorationThemeApp.suffixIconColorTheme(context),
                image: const AssetImage(
                  AssetsImages.searchIcon,
                ))));
  }

  static BoxDecoration settingsItemBuilderLowerLayerBoxDecorations(
    context,
  ) {
    final shadowButtonColor = ThemeApp.shadowButtonColorThemeApp(context);
    final borderButtonColor = ThemeApp.borderButtonsLanguageThemeApp(context);
    final buttonLowerLayerColor =
        ThemeApp.settingsButtonLowerLayerColorThemeApp(context);
    return BoxDecoration(
      color: buttonLowerLayerColor,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        color: borderButtonColor,
        width: 1.5,
      ),
      boxShadow: [
        BoxShadow(
          color: shadowButtonColor,
          blurRadius: 5.0,
          spreadRadius: 0.25,
          offset: const Offset(5, 5),
        ),
      ],
    );
  }

  static BoxDecoration settingsItemBuilderUpperLayerBoxDecorations(context) {
    final buttonUpperLayerColor =
        ThemeApp.settingsButtonUpperLayerColorThemeApp(context);
    return BoxDecoration(
      color: buttonUpperLayerColor,
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
