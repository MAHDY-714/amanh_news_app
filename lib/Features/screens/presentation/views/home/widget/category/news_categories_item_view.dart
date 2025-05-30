import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/widget/item_active.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';

class NewsCategoriesItemBuilder extends StatelessWidget {
  const NewsCategoriesItemBuilder({
    super.key,
    this.isActive = false,
    required this.imageCategory,
    required this.nameCategory,
  });
  final bool isActive;
  final String imageCategory;
  final String nameCategory;

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 2.0);
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 4.0, vertical: 4.0),
      child: Container(
        width: kWidthConditions(
          context,
          valueIsTrue: kWidth(context) * .34,
          valueIsFalse: kWidth(context) * .35,
        ),
        decoration: BoxDecoration(
          color: AppColor.transparent,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: kHeightConditions(
                context,
                valueIsTrue: 85.0,
                valueIsFalse: 95.0,
              ),
              width: kWidthConditions(
                context,
                valueIsTrue: kWidth(context) * .4,
                valueIsFalse: kWidth(context) * .34,
              ),
              decoration:
                  Decorations.newsCategoryDecoration(image: imageCategory),
            ),
            sizedBox,
            Text(
              nameCategory,
              style:
                  TextThemeApp.themeNameCategory(context, isActive: isActive),
            ),
            sizedBox,
            ItemIsActive(
              radius: kHeightConditions(
                context,
                valueIsTrue: 5.0,
                valueIsFalse: 6.0,
              ),
              isActive: isActive,
            ),
            // if (isActive) Spacer(),
          ],
        ),
      ),
    );
  }
}
