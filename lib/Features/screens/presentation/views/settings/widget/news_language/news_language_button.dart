import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/country_flag_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
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
    final borderColorTheme = ThemeApp.borderButtonsLanguageThemeApp(context);
    final buttonColorTheme = ThemeApp.buttonLanguageThemeApp(context);

    final border = Border.all(
      // color: AppColor.redDeep2, // light mode
      color: color ?? borderColorTheme, // dark mode
      width: 2.0,
    );
    var borderRadiusDirectional = BorderRadiusDirectional.only(
      topStart: Radius.circular(topStartRadius ?? 2.0),
      bottomStart: Radius.circular(bottomStartRadius ?? 16.0),
      topEnd: Radius.circular(topEndRadius ?? 16.0),
      bottomEnd: Radius.circular(bottomEndRadius ?? 2.0),
    );
    return Container(
      height: heightBody,
      padding: const EdgeInsets.all(4.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: color ?? AppColor.red2.withValues(alpha: .1), // light mode
        color: buttonColorTheme, // dark mode
        shape: BoxShape.rectangle,
        border: border,
        borderRadius: borderRadiusDirectional,
        // border: borderDirectional,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountryFlagIcon(countryCode: countryCode ?? 'WO', fontSize: 14.0),
            space,
            Text(
              countryLanguage ?? 'WO',
              // '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12.0,
                color: AppColor.black54, // light mode
                // color: fontColor ?? AppColor.white90 // dark mode,
                fontFamily: AssetsFontFamily.bitter900,
                letterSpacing: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
