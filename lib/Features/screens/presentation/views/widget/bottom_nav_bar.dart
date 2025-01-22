import 'package:amanh_news_app/Features/screens/presentation/views/widget/nav_bar_icon_view.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:icon_broken/icon_broken.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeightConditions(context, valueIsTrue: 55.0, valueIsFalse: 65.0),
      // alignment: AlignmentDirectional.center,
      padding: EdgeInsetsDirectional.symmetric(
          horizontal:
              kWidthConditions(context, valueIsTrue: 35.0, valueIsFalse: 45.0)),
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
            color: AppColor.redDeep2,
            width: 3.0,
          ),
        ),
        color: AppColor.redDeep,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarIconBuilder(
            icon: TablerIcons.world_search,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
          ),
          NavBarIconBuilder(
            icon: IconBroken.Setting,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSettingsView);
            },
          ),
        ],
      ),
    );
  }
}
