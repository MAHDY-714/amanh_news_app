import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class CountryFlagIcon extends StatelessWidget {
  const CountryFlagIcon({
    super.key,
    required this.countryCode,
    this.fontSize,
  });

  final String countryCode;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${kCountryFlag(countryFlagEmoji: countryCode.toUpperCase())}',
      style: TextStyle(
        fontSize: fontSize ?? 12.0,
      ),
    );
  }
}