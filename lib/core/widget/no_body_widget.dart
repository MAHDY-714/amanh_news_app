import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

class NoBodyView extends StatelessWidget {
  const NoBodyView({
    super.key,
    this.errorMessage,
  });
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsImages.noBody,
            color: ThemeApp.noBodyIconColorThemeApp(context),
            height: kHeightConditions(context,
                valueIsTrue: 210.0, valueIsFalse: 250.0),
            // width: 200,
          ),
          Text(
            errorMessage ?? '',
            style: TextThemeApp.themTextError(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
