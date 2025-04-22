import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_image_in_item_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_title_and_date_in_item_view.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsItemBuilder extends StatelessWidget {
  const NewsItemBuilder({
    super.key,
    required this.articlesNewsModel,
    this.state,
  });
  final ArticlesNewsModel articlesNewsModel;
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.parse(articlesNewsModel.pubDate!);
    DateFormat formatter = DateFormat('EEEE, MMMM d, yyyy');
    String date = formatter.format(dateTime);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        height:
            kHeightConditions(context, valueIsTrue: 255.0, valueIsFalse: 310.0),
        width: double.infinity,
        decoration: Decorations.newsItemBuilderBoxDecorations(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsImageInItemBuilder(
              articlesNewsModel: articlesNewsModel,
            ),
            const SizedBox(height: 4.0),
            NewsTitleAndDateInItemBuilder(
                title: articlesNewsModel.title ?? '', date: '$date'),
            const SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
