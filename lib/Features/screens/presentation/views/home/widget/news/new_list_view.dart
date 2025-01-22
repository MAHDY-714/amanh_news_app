import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/news_item_view.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NewsItemBuilder(
                image: AssetsImages.newsCategoriesImages[index]);
          },
          itemCount: AssetsImages.newsCategoriesImages.length,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
