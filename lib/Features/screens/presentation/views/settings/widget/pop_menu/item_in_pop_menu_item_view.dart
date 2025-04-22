import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:country_flags/country_flags.dart';
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
    final colorFlag = isActive ? AppColor.white24 : AppColor.white24;
    const textStyle = const TextStyle(
      fontSize: 11.0,
      color: AppColor.white,
      fontFamily: AssetsFontFamily.platypi400,
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
          Container(
            width: itemSize,
            height: itemSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: colorFlag,
                width: 1.0,
              ),
            ),
            child: CountryFlag.fromCountryCode(
              countryCode,
              width: itemSize,
              height: itemSize,
              shape: const Circle(),
            ),
          ),
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
