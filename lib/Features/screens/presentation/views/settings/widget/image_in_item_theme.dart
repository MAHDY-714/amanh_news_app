import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

class ImageInItemTheme extends StatelessWidget {
  const ImageInItemTheme({
    super.key,
    required this.image,
    required this.mode,
  });
  final String image;
  final bool mode;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight(context) * .30,
      width: kWidth(context) * .315,
      decoration: BoxDecoration(
        color: AppColor.transparent,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
            color: ThemeApp.borderItemSelectThemeColorThemeApp(
              context,
              isActive: mode,
            ),
            width: mode ? 1.5 : 1.0),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
