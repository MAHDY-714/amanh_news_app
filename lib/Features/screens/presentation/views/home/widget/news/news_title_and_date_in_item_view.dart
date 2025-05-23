import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';

class NewsTitleAndDateInItemBuilder extends StatelessWidget {
  const NewsTitleAndDateInItemBuilder({
    super.key,
    required this.title,
    required this.date,
  });
  final String title;
  final String date;
  @override
  Widget build(BuildContext context) {
    final titleTheme = TextThemeApp.themeTitleNews(context);
    final dateTheme = TextThemeApp.themeDateNews(context);
    // log('Width: ${kWidth(context)}');
    // log('Height: ${kHeight(context)}');
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: const BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              maxLines: 2,
              style: titleTheme,
            ),
            Text(
              '$date',
              maxLines: 1,
              style: dateTheme,
            ),
          ],
        ),
      ),
    );
  }
}
