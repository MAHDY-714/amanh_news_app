import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/category_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/box_decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
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
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Container(
        width: kWidthConditions(
          context,
          valueIsTrue: kWidth(context) * .35,
          valueIsFalse: kWidth(context) * .36,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
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
                    fontFamily: isActive
                        ? AssetsFontFamily.bitter400
                        : AssetsFontFamily.bitter300,
                    fontSize: kWidthConditionsFonts(
                      context,
                      isConditions: isActive,
                      fontSizeLargeTrue: 13.0,
                      fontSizeLargeFalse: 16.0,
                      fontSizeSmallTrue: 10.0,
                      fontSizeSmallFalse: 12.0,
                    ),
                    // isActive ? 13 : 10,
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
