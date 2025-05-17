import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/item_chose_theme_view.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:flutter/material.dart';

class RowForChoseThemeBuilder extends StatelessWidget {
  const RowForChoseThemeBuilder({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const sizedBoxWidth = SizedBox(width: 8.0);
    var cubi = Cubits.settingsCubit(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ItemChoseThemeBuilder(
            homeImage: AssetsImages.homeDark,
            searchImage: AssetsImages.searchDark,
            mode: kMode ? true : false,
            onTap: () => cubi.changeThemeApp(context, isMode: true),
          ),
        ),
        sizedBoxWidth,
        Flexible(
          child: ItemChoseThemeBuilder(
            homeImage: AssetsImages.homeLight,
            searchImage: AssetsImages.searchLight,
            mode: kMode ? false : true,
            onTap: () => cubi.changeThemeApp(context, isMode: false),
          ),
        ),
      ],
    );
  }
}
