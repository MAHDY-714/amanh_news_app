import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/news_language/news_language_row.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/pop_menu/pop_menu_button.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';

class ChangeLanguageAndCountry extends StatelessWidget {
  const ChangeLanguageAndCountry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 8.0);
    final textTheme = TextThemeApp.themeTitleTextInSettings(context);
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Country',
                  style: textTheme,
                ),
                // sizedBox,
                const PopMenuButton(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Language',
                  style: textTheme,
                ),
                sizedBox,
                const NewsLanguageRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
