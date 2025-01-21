import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/news_categories_item_view.dart';
import 'package:amanh_news_app/core/utils/assets/assets_images.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class NewsCategoriesListView extends StatelessWidget {
  const NewsCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: kWidth(context),
      child: ListView.builder(
        itemBuilder: ((context, index) => NewsCategoriesItemView(
              imageCategory: AssetsImages.newsCategoriesImages[index],
              nameCategory: kNewsCategoriesName[index],
              isActive: index == 0 ? true : false,
            )),
        itemCount: kNewsCategoriesName.length - 1,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
