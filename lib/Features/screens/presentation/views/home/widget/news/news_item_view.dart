import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_image_in_item_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_title_and_date_in_item_view.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class NewsItemBuilder extends StatelessWidget {
  const NewsItemBuilder({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        height:
            kHeightConditions(context, valueIsTrue: 250.0, valueIsFalse: 300.0),
        width: double.infinity,
        decoration: BoxDecoration(
          // color: AppColor.white,
          color: ThemeApp.backgroundNewsItemColorThemeApp(context),
          border: Border.all(
            color: ThemeApp.borderNewsItemColorThemeApp(context),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsImageInItemBuilder(image: image),
            NewsTitleAndDateInItemBuilder(title: kNewsTitle, date: kNewsDate),
            SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
