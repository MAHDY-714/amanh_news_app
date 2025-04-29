import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/icons_in_settings_item.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';

class SettingsItemBuilder extends StatelessWidget {
  const SettingsItemBuilder({
    super.key,
    required this.title,
    required this.icon,
    this.color,
  });
  final String title;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .05,
      // width: kWidth(context) * .8,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: AppColor.redDeep8,
        borderRadius: BorderRadius.circular(8.0),
        // border: Border.all(
        //   color: AppColor.white12.withValues(alpha: 0.01),
        //   width: 2,
        // ),
        boxShadow: [
          const BoxShadow(
            color: Color(0xFF1A0101),
            // color: AppColor.redDeep5.withValues(alpha: 0.05),
            blurRadius: 10.0,
            spreadRadius: 0.5,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextThemeApp.themeTitleTextInSettings(context),
          ),
          const Spacer(),
          IconsInSettingsItem(
            icon: icon,
            color: color,
          ),
        ],
      ),
    );
  }
}
