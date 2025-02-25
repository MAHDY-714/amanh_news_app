import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/model/news_model/article_news_model.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_item_view.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articlesNewsModel});
  final List<ArticlesNewsModel>? articlesNewsModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NewsItemBuilder(
              articlesNewsModel: articlesNewsModel![index],
            );
          },
          itemCount: articlesNewsModel!.length,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
