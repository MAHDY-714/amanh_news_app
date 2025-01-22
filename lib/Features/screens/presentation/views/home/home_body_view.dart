import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/news_categories_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/new_list_view.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          NewsCategoriesListView(),
          NewsListView(),
        ],
      ),
    );
  }
}
