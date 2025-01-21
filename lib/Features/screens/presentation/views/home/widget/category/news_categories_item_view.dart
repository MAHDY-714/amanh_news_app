import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/cayegory_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/box_decorations.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class NewsCategoriesItemView extends StatelessWidget {
  const NewsCategoriesItemView({
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
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Container(
        height: 140,
        width: kWidthConditions(
          context,
          valueIsTrue: kWidth(context) * .35,
          valueIsFalse: kWidth(context) * .35,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: kWidthConditions(
                context,
                valueIsTrue: kWidth(context) * .35,
                valueIsFalse: kWidth(context) * .35,
              ),
              decoration:
                  BoxDecorations.newsCategoryDecoration(image: imageCategory),
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              //   borderRadius: BorderRadius.circular(16.0),
              //   image: DecorationImage(
              //     fit: BoxFit.cover,
              //     image: AssetImage(AssetsImages.newsCategoriesImages[0]),
              //   ),
              // ),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  nameCategory,
                  style: TextStyle(
                    color: AppColor.red,
                    fontWeight: FontWeight.w900,
                    fontSize: isActive ? 13 : 10,
                  ),
                ),
              ),
            ),
            CategoryActive(
              // radius: 10,
              isActive: isActive,
            ),
            if (isActive)
              SizedBox(
                height: 10,
              ),
          ],
        ),
      ),
    );
  }
}
