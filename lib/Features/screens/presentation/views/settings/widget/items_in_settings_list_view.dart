import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/settings_item_view.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_broken/icon_broken.dart';

class ItemsInSettingsListView extends StatelessWidget {
  const ItemsInSettingsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final icon = kMode ? FontAwesomeIcons .volcano : FontAwesomeIcons.sun;
    final iconModeColor = ThemeApp.iconModeColorThemeApp(context);
    final listIcons = [
      icon,
      TablerIcons.world,
      Icons.translate_rounded,
      TablerIcons.info_circle,
    ];
    const listTitles = [
      'Mode',
      'Country',
      'Language',
      'About',
    ];
    final listColors = [
      iconModeColor,
      AppColor.greenDeep,
      AppColor.skyDeep,
      AppColor.orangeDeep,
    ];

    const sizedBox = SizedBox(height: 16.0);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) => SettingsItemBuilder(
            title: listTitles[index],
            icon: listIcons[index],
            color: listColors[index],
          ),
          separatorBuilder: (context, index) => sizedBox,
          itemCount: 4,
        ),
      ),
    );
  }
}
