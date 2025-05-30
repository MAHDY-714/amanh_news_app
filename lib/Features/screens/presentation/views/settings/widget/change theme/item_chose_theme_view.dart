import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/icon_active_in_item_theme.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/image_in_item_theme.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:flutter/material.dart';

class ItemChoseThemeBuilder extends StatelessWidget {
  const ItemChoseThemeBuilder(
      {super.key,
      required this.homeImage,
      required this.searchImage,
      required this.mode,
      this.onTap});
  final String homeImage;
  final String searchImage;
  final bool mode;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: kHeight(context) * .28,
        // width: kWidth(context) * .34,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: AppColor.transparent,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
              color: ThemeApp.borderItemSelectThemeColorThemeApp(context,
                  isActive: mode),
              width: mode ? 2.5 : 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageInItemTheme(image: homeImage, mode: mode),
                  const SizedBox(width: 4.0),
                  ImageInItemTheme(image: searchImage, mode: mode),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            IconActiveInItemTheme(mode: mode),
          ],
        ),
      ),
    );
  }
}
