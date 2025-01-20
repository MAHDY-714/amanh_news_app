import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeButtonInNavBar extends StatelessWidget {
  const HomeButtonInNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.redDeep,
      radius: 28,
      child: FloatingActionButton.large(
        onPressed: () {},
        elevation: 0.0,
        child: Icon(
          IconBroken.Home,
          size: kWidthConditions(
            context,
            valueIsTrue: 30.0,
            valueIsFalse: 35.0,
          ),
          color: AppColor.red,
        ),
        backgroundColor: Colors.white,
        shape: CircleBorder(
          side: BorderSide(
            color: AppColor.redDeep,
            width: 2,
          ),
        ),
      ),
    );
  }
}
