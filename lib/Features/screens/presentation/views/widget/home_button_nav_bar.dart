import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/category_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/navbar_theme.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeButtonInNavBar extends StatelessWidget {
  const HomeButtonInNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: kWidthConditions(context, valueIsTrue: 30.0, valueIsFalse: 35.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CategoryActive(
            isActive: true,
            radius: kWidthConditions(
              context,
              valueIsTrue: 15.0,
              valueIsFalse: 17.5,
            ),
          ),
          FloatingActionButton.large(
            onPressed: () {},
            elevation: 0.0,
            splashColor: AppColor.red.withValues(alpha: .05),
            child: Icon(
              IconBroken.Home,
              size: kWidthConditions(
                context,
                valueIsTrue: 30.0,
                valueIsFalse: 40.0,
              ),
              color: NavBarThemeApp.homeButtonInNavBarTheme(context),
            ),
            backgroundColor: Colors.white,
            shape: CircleBorder(
              side: BorderSide(
                color: NavBarThemeApp.borderColorNavBarTheme(context),
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
