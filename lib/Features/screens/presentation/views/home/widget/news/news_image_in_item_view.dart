import 'package:amanh_news_app/Features/screens/data/model/news_model/article_news_model.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class NewsImageInItemBuilder extends StatelessWidget {
  const NewsImageInItemBuilder({super.key, required this.articleNewsModel});
  final ArticleNewsModel articleNewsModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: kWidth(context),
        decoration: Decorations.imageInNewsItemBuilderBoxDecoration(context,
            image: articleNewsModel.urlToImage ?? '',
            isNetWorkImage: articleNewsModel.urlToImage != null ? true : false),
      ),
    );
  }
}
