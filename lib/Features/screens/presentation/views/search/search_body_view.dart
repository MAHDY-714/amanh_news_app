import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/search_text_field.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyColor(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SearchTextField(),
              Expanded(
                child: Container(
                  // color: AppColor.redDeep4,
                  alignment: Alignment.center,
                  child: Image.asset(
                    AssetsImages.noBody,
                    // color: Colors.white70,
                    color: ThemeApp.noBodyIconColorThemeApp(context),
                    height: 250,
                    // width: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
