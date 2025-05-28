import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/country_flag_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';

class ItemInBodyContentForSettingsItem extends StatelessWidget {
  const ItemInBodyContentForSettingsItem({
    super.key,
    this.countryCode,
    this.countryLanguage,
    this.onTap,
    this.color,
    this.icon,
  });

  final String? countryCode;
  final String? countryLanguage;
  final Color? color;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(width: 8.0);
    final textTheme = TextThemeApp.themeCodeInSettings(context);
    // bool isSelected = cubi.isSelectedCountry;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon ?? Icons.circle,
                color: color ?? AppColor.white38,
                size: 25.0,
              ),
              space,
              CountryFlagIcon(countryCode: countryCode ?? 'WO', fontSize: 20.0),
              space,
              Text(
                // '${countryLanguage?.toUpperCase()} ${cubi.listLanguage[0] == ' wo' ? '(Country Language)' : ''}' ??
                countryLanguage ?? 'World',
                // '',
                textAlign: TextAlign.start,
                style: textTheme,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
