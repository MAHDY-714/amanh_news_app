import 'dart:developer';

import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/core/widget/item_active.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/floating_action_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';

class HomeButtonInNavBar extends StatelessWidget {
  const HomeButtonInNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<HomeCubit>(context);
    return ItemIsActive(
      isActive: cubi.currentCategory == 6 ? true : false,
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
          onPressed: () {
            cubi.currentCategory = 6;
            log('the home button is active ${cubi.currentCategory}');
            cubi.getCategoryHome(cubi.currentCategory);
          },
          elevation: 0.0,
          splashColor: AppColor.pink2,
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
