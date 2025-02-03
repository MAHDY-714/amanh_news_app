import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/input_decoration_theme.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.all(8.0),
            enabledBorder: InputDecorationThemeApp.enabledBorderTheme(context),
            focusedBorder: InputDecorationThemeApp.focusedBorderTheme(context),
            fillColor: InputDecorationThemeApp.formFieldColorTheme(context),
            filled: true,
            hintText: 'Search for the news you care about',
            hintStyle: InputDecorationThemeApp.themeHintStyle(context),
            hintFadeDuration: Duration(seconds: 1),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Image(
                    height: 20,
                    width: 20,
                    color:
                        InputDecorationThemeApp.suffixIconColorTheme(context),
                    image: AssetImage(
                      AssetsImages.searchIcon,
                    )))));
  }
}
