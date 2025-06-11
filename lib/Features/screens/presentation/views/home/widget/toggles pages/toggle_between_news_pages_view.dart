import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/toggles%20pages/toggle_news_page_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToggleBetweenNewsPages extends StatelessWidget {
  const ToggleBetweenNewsPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: kWidth(context),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: AppColor.redDeep11.withValues(
          alpha: 0.01,
        ),
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ToggleNewsPageIcon(
            icon: FontAwesomeIcons.anglesLeft,
            text: '1',
          ),
          const SizedBox(width: 16.0),
          Text(
            '999',
            style: TextThemeApp.themeTitleTextInSettings(context),
          ),
          const SizedBox(width: 16.0),
          const ToggleNewsPageIcon(
            icon: FontAwesomeIcons.anglesRight,
            text: '3',
            sortIcons: true,
          ),
        ],
      ),
    );
  }
}
