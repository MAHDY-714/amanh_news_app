import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/news_categories_item_view.dart';
import 'package:flutter/material.dart';

class NewsCategoriesListView extends StatelessWidget {
  const NewsCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NewsCategoriesItemView(
          isActive: true,
        ),
        SizedBox(
          width: 20,
        ),
        NewsCategoriesItemView(),
      ],
    );
  }
}
