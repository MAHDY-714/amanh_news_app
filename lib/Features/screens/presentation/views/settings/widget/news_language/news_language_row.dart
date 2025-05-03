import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/news_language/news_language_button.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

class NewsLanguageRow extends StatelessWidget {
  const NewsLanguageRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const heightBody = 35.0;
    const space = SizedBox(width: 8.0);
    final itemSelectedColorTheme = ThemeApp.shadowButtonColorThemeApp(context);
    return Container(
      height: heightBody,
      decoration: BoxDecoration(
        // color: AppColor.redDeep6, // light mode
        // color: backgroundColorTheme, // dark mode
        // color: AppColor.transparent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      width: kWidth(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const NewsLanguageButton(
            heightBody: heightBody,
            countryCode: 'EG',
            countryLanguage: 'AR',
          ),
          space,
          NewsLanguageButton(
            heightBody: heightBody,
            countryCode: 'US',
            countryLanguage: 'EN',
            color: itemSelectedColorTheme,
          ),
          space,
          const NewsLanguageButton(
            heightBody: heightBody,
            countryCode: 'WO',
          ),
        ],
      ),
    );
  }
}
