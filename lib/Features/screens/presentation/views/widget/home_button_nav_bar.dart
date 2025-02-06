import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/category_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/floating_action_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeButtonInNavBar extends StatelessWidget {
  const HomeButtonInNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return CategoryActive(
      isActive: true,
      radius: kWidthConditions(
        context,
        valueIsTrue: 29.0,
        valueIsFalse: 35.0,
      ),
      glowRadiusFactor: 0.2,
      child: CircleAvatar(
        backgroundColor:
            FloatingActionButtonThemeApp.backgroundFloatingButtonThemeApp(
                context),
        radius:
            kWidthConditions(context, valueIsTrue: 30.0, valueIsFalse: 35.0),
        child: FloatingActionButton.large(
          onPressed: () {},
          elevation: 0.0,
          splashColor: AppColor.pink,
          backgroundColor:
              FloatingActionButtonThemeApp.backgroundFloatingButtonThemeApp(
                  context),
          shape: CircleBorder(
            side: BorderSide(
              color: FloatingActionButtonThemeApp
                  .borderColorFloatingButtonThemeApp(context),
              width: 2.5,
            ),
          ),
          child: Icon(
            IconBroken.Home,
            size: kWidthConditions(
              context,
              valueIsTrue: 35.0,
              valueIsFalse: 40.0,
            ),
            color: FloatingActionButtonThemeApp.iconFloatingButtonThemeApp(
                context),
          ),
        ),
      ),
    );
  }
}
