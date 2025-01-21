import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/cayegory_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class NewsCategoriesItemView extends StatelessWidget {
  const NewsCategoriesItemView({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Categories",
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
    );
  }
}
