import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/item_theme_builder.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyColor(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ItemChoseThemeView(
                homeImage: AssetsImages.homeDark,
                searchImage: AssetsImages.searchDark,
                mode: kMode ? true : false,
              ),
              SizedBox(height: 8.0),
              ItemChoseThemeView(
                homeImage: AssetsImages.homeLight,
                searchImage: AssetsImages.searchLight,
                mode: kMode ? false : true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
