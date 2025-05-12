import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/widget/item_active.dart';
import 'package:flutter/material.dart';

class IconActiveInItemTheme extends StatelessWidget {
  const IconActiveInItemTheme({
    super.key,
    required this.mode,
  });
  final bool mode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ItemIsActive(
        radius: 12,
        isActive: mode ? true : false,
        glowRadiusFactor: .3,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: ThemeApp.borderItemSelectThemeColorThemeApp(context,
              isActive: mode),
          child: CircleAvatar(
            radius: 7.5,
            backgroundColor: kMode ? AppColor.redDeep6 : AppColor.white,
          ),
        ),
      ),
    );
  }
}
