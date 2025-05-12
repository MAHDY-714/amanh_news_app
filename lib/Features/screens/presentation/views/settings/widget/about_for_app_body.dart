import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class AboutForAppBody extends StatelessWidget {
  const AboutForAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemeApp.themeCodeInSettings(context);
    final backgroundColor = ThemeApp.backgroundAboutBodyColorThemeApp(context);
    final borderAboutBody = ThemeApp.borderAboutBodyColorThemeApp(context);

    return Container(
      height: kHeight(context) * .38,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        // color: kMode ? AppColor.redDeep7 : AppColor.red3,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),

        border: Border.all(
          // color: kMode ? AppColor.white24 : AppColor.redDeep7,
          color: borderAboutBody,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: kHeight(context) * .05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  TablerIcons.info_circle,
                  color: AppColor.orangeDeep,
                  size: 40.0,
                ),
                const SizedBox(width: 4.0),
                Text(
                  'Version 1.0.0',
                  style: textTheme.copyWith(
                    color: AppColor.orangeDeep,
                    fontSize: 20.0,
                    height: .1,
                    fontFamily: AssetsFontFamily.bitter500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: Text(
              kAboutForNewsApp,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: textTheme.copyWith(
                // color: AppColor.white,
                fontSize: 13.0,
                fontFamily: AssetsFontFamily.bitter600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
