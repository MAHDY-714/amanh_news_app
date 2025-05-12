import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class RowItemsInItemBuilder extends StatelessWidget {
  const RowItemsInItemBuilder({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
    required this.color,
  });

  final void Function()? onTap;
  final String title;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final iconColor = ThemeApp.iconInSettingsColorThemeApp(context);
    final textTheme = TextThemeApp.themeTitleTextInSettings(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: kHeight(context) * .05,
        decoration:
            Decorations.settingsItemBuilderLowerLayerBoxDecorations(context),
        child: Container(
          height: kHeight(context) * .05,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration:
              Decorations.settingsItemBuilderUpperLayerBoxDecorations(context),
          child: Row(
            children: [
              Text(title, style: textTheme),
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
      ),
    );
  }
}
