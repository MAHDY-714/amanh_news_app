import 'package:amanh_news_app/Features/screens/presentation/views/widget/icon_in_nav_bar.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:icon_broken/icon_broken.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeightConditions(context, valueIsTrue: 55.0, valueIsFalse: 60.0),
      // alignment: AlignmentDirectional.center,
      padding: EdgeInsetsDirectional.symmetric(
          horizontal:
              kWidthConditions(context, valueIsTrue: 35.0, valueIsFalse: 45.0)),
      decoration: BoxDecoration(
        color: const Color(0xFF590100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconInNavBar(
            icon: TablerIcons.world_search,
            onPressed: () {},
          ),

          // IconInNavBar(
          //   icon: Icons.home,
          //   onPressed: () {},
          // ),

          IconInNavBar(
            icon: IconBroken.Setting,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
