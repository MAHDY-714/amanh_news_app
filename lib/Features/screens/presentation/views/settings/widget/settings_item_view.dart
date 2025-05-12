import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/body_content_for_settings_item.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/row_items_in_item_builder.dart';
import 'package:flutter/material.dart';

class SettingsItemBuilder extends StatelessWidget {
  const SettingsItemBuilder({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.onTap,
    required this.indexItem,
    required this.index,
    required this.cubi,
  });
  final String title;
  final IconData icon;
  final Color? color;
  final void Function()? onTap;
  final int indexItem;
  final int index;
  final SettingsCubit cubi;

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 16.0);
    return Column(
      children: [
        RowItemsInItemBuilder(
          onTap: onTap,
          title: title,
          icon: icon,
          color: color,
        ),
        if (indexItem == index)
          BodyContentForItemSettings(
            cubi: cubi,
            index: indexItem,
          )
        else
          sizedBox,
      ],
    );
  }
}
