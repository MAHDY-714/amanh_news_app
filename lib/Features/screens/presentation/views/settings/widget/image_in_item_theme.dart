import 'package:amanh_news_app/core/styles/app_colors.dart';
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
    return Expanded(
      child: Container(
        // height: kHeight(context) * .2,
        // width: kWidth(context) * .12,
        decoration: BoxDecoration(
          color: AppColor.transparent,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: ThemeApp.borderItemSelectThemeColorThemeApp(
                context,
                isActive: mode,
              ),
              width: mode ? 1.5 : 1.5),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            isAntiAlias: true,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
