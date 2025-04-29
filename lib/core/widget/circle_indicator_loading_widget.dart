import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/progress_indicator_theme.dart';
import 'package:flutter/material.dart';

class CircleIndicatorLoadingWidget extends StatelessWidget {
  const CircleIndicatorLoadingWidget({
    super.key,
    this.radiusOut,
    this.radiusIn,
    this.strokeWidth,
    this.strokeAlign,
    this.strokeAlign2,
    this.outlinedIndicatorColor,
    this.progressIndicatorTrackColor,
  });

  final double? radiusOut;
  final double? radiusIn;
  final double? strokeWidth;
  final double? strokeAlign;
  final double? strokeAlign2;
  final Color? outlinedIndicatorColor;
  final Color? progressIndicatorTrackColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: kHeight(context) * .4,
        child: CircleAvatar(
          radius: 2 * (radiusOut ?? 15.2),
          backgroundColor: outlinedIndicatorColor ??
              ProgressIndicatorThemeApp.outlinedIndicatorColorTheme(context), //
          // backgroundColor: AppColor.white12,

          child: CircleAvatar(
            radius: radiusIn ?? 15.0,
            // backgroundColor: AppColor.red, // dark
            backgroundColor: outlinedIndicatorColor ??
                ProgressIndicatorThemeApp.outlinedIndicatorColorTheme(
                    context), // l
            child: CircularProgressIndicator(
              strokeWidth: 1.0 + (strokeWidth ?? 16.0),
              // backgroundColor: colors[i], // dark
              backgroundColor: progressIndicatorTrackColor ??
                  ProgressIndicatorThemeApp.progressIndicatorTrackColorTheme(
                      context),
              strokeCap: StrokeCap.butt,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColor.pink3),
              strokeAlign: 1,
            ),
          ),
        ),
      ),
    );
  }
}
