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
              maxLines: 3,
              style: TextThemeApp.themeTitleNews(context),
            ),
            Text(
              '$date',
              maxLines: 1,
              style: TextThemeApp.themeDateNews(context),
            ),
          ],
        ),
      ),
    );
  }
}
