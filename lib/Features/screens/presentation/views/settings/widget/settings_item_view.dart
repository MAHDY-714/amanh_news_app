import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

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
    final shadowButtonColor = ThemeApp.shadowButtonColorThemeApp(context);
    final borderButtonColor = ThemeApp.borderButtonsLanguageThemeApp(context);
    final buttonLowerLayerColor =
        ThemeApp.settingsButtonLowerLayerColorThemeApp(context);
    final buttonUpperLayerColor =
        ThemeApp.settingsButtonUpperLayerColorThemeApp(context);
    final iconColor = ThemeApp.iconInSettingsColorThemeApp(context);


    return Container(
      height: kHeight(context) * .05,
      decoration: BoxDecoration(
        color: buttonLowerLayerColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: borderButtonColor,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowButtonColor,
            blurRadius: 5.0,
            spreadRadius: 0.25,
            offset: const Offset(5, 5),
          ),
        ],
      ),
      child: Container(
        height: kHeight(context) * .05,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: buttonUpperLayerColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: TextThemeApp.themeTitleTextInSettings(context),
            ),
            const Spacer(),
            Icon(
              icon,
              size: 20.0,
              color: color ?? AppColor.white54,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Icon(
              IconBroken.Arrow___Down_2,
              size: 24.0,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
