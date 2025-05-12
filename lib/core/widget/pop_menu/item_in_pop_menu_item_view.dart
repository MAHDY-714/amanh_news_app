import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/country_flag_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:flutter/material.dart';

class ItemInPopMenuItemBuilder extends StatelessWidget {
  const ItemInPopMenuItemBuilder({
    super.key,
    this.itemSize = 20.0,
    required this.countryCode,
    required this.isActive,
  });
  final double itemSize;
  final String countryCode;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    const textStyle = const TextStyle(
      fontSize: 12.0,
      color: AppColor.white,
      fontFamily: AssetsFontFamily.bitter900,
      letterSpacing: 1.0,
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CountryFlagIcon(countryCode: countryCode),
          const SizedBox(width: 8.0),
          Text(
            countryCode.toUpperCase(),
            style: textStyle,
        
          ),
        ],
      ),
    );
  }
}
