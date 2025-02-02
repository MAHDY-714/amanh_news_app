import 'package:amanh_news_app/core/styles/app_colors.dart';
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
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: AppColor.greyColor,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide(
                color: AppColor.red,
                width: 2.0,
              ),
            ),
            fillColor: AppColor.formFieldColor,
            filled: true,
            hintText: 'Search for the news you care about',
            hintStyle: InputDecorationThemeApp.themeHintStyle(context),
            hintFadeDuration: Duration(seconds: 1),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Image(
                    height: 20,
                    width: 20,
                    color: AppColor.greyColor,
                    image: AssetImage(
                      AssetsImages.searchIcon,
                    )))));
  }
}
