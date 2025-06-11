import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

class ToggleNewsPageIcon extends StatelessWidget {
  const ToggleNewsPageIcon({
    super.key,
    required this.icon,
    this.text,
    this.sortIcons = false,
  });
  final IconData icon;
  final String? text;
  final bool sortIcons;
  @override
  Widget build(BuildContext context) {
    final Color buttonColor =
        ThemeApp.backgroundImageNewsItemColorThemeApp(context);
    final Color borderButtonColor =
        ThemeApp.borderNewsItemColorThemeApp(context);
    final Color iconColor = AppColor.white70;
    final double iconSize = 20.0;
    return Container(
      height: 35.0,
      width: 80.0,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderButtonColor,
          width: 2.0,
        ),
      ),
      child: sortIcons
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  // text ?? '1',
                  '999',
                  style: TextStyle(
                    color: AppColor.white70,
                    fontSize: 12.0,
                    fontFamily: AssetsFontFamily.bitter900,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
                const SizedBox(width: 5),
                const Text(
                  // text ?? '1',
                  '999',
                  style: const TextStyle(
                    color: AppColor.white70,
                    fontSize: 12.0,
                    fontFamily: AssetsFontFamily.bitter500,
                  ),
                ),
              ],
            ),
    );
  }
}
