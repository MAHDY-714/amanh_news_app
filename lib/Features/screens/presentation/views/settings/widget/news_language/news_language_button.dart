import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/country_flag_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:flutter/material.dart';

class NewsLanguageButton extends StatelessWidget {
  const NewsLanguageButton({
    super.key,
    required this.heightBody,
    this.countryCode,
    this.topStartRadius,
    this.bottomStartRadius,
    this.topEndRadius,
    this.bottomEndRadius,
    this.countryLanguage,
    this.color,
    this.fontColor,
  });

  final double heightBody;
  final double? topStartRadius;
  final double? bottomStartRadius;
  final double? topEndRadius;
  final double? bottomEndRadius;
  final String? countryCode;
  final String? countryLanguage;
  final Color? color;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(width: 4.0);

    const borderDirectional = const BorderDirectional(
      top: BorderSide(
        color: AppColor.white24,
        width: 1.0,
      ),
      bottom: BorderSide(
        color: AppColor.white24,
        width: 1.0,
      ),
      start: BorderSide(
        color: AppColor.white24,
        width: 1.0,
      ),
      end: BorderSide(
        color: AppColor.white24,
        width: 1.0,
      ),
    );
    var borderRadiusDirectional = BorderRadiusDirectional.only(
      topStart: Radius.circular(topStartRadius ?? 8.0),
      bottomStart: Radius.circular(bottomStartRadius ?? 8.0),
      topEnd: Radius.circular(topEndRadius ?? 8.0),
      bottomEnd: Radius.circular(bottomEndRadius ?? 8.0),
    );
    return Container(
      height: heightBody,
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? AppColor.redDeep7,
        borderRadius: borderRadiusDirectional,
        border: borderDirectional,
      ),
      child: Row(
        children: [
          CountryFlagIcon(countryCode: countryCode ?? 'WO'),
          space,
          Text(
            countryLanguage ?? 'Country Language',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9.0,
              color: fontColor ?? AppColor.white54,
              fontFamily: AssetsFontFamily.platypi900,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
