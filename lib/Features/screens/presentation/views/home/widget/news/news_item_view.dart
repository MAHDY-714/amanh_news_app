import 'package:amanh_news_app/Features/screens/data/model/news_model/article_news_model.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_image_in_item_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_title_and_date_in_item_view.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsItemBuilder extends StatelessWidget {
  const NewsItemBuilder({
    super.key,
    required this.articleNewsModel,
  });
  final ArticleNewsModel articleNewsModel;
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.parse(articleNewsModel.publishedAt!);
    DateFormat formatter = DateFormat('EEEE, MMMM d, yyyy');
    String date = formatter.format(dateTime);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        height:
            kHeightConditions(context, valueIsTrue: 255.0, valueIsFalse: 310.0),
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
            NewsImageInItemBuilder(
              articleNewsModel: articleNewsModel,
            ),
            SizedBox(height: 4.0),
            NewsTitleAndDateInItemBuilder(
                title: articleNewsModel.title!, date: '$date'),
            SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
