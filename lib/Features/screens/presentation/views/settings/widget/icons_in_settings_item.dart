import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class IconsInSettingsItem extends StatelessWidget {
  const IconsInSettingsItem({
    super.key,
    required this.icon,
    this.color,
  });

  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20.0,
          color: color??AppColor.white54,
        ),
      ],
    );
  }
}
