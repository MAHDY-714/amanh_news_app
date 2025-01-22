import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/text_styles.dart';
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
        decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              maxLines: 3,
              style: TextStyles.titleTextStyle.copyWith(
                fontSize: kWidthConditions(context,
                    valueIsTrue: 12.0, valueIsFalse: 16.0),
              ),
            ),
            Text(
              '$date',
              maxLines: 1,
              style: TextStyles.dateTextStyle.copyWith(
                fontSize: kWidthConditions(context,
                    valueIsTrue: 10.0, valueIsFalse: 13.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
