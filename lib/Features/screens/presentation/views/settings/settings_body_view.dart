import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/item_chose_theme_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/news_language/news_language_row.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/pop_menu/pop_menu_button.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_font_family.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 4.0);
    var cubi = BlocProvider.of<SettingsCubit>(context);
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return BodyColor(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ItemChoseThemeBuilder(
                      homeImage: AssetsImages.homeDark,
                      searchImage: AssetsImages.searchDark,
                      mode: kMode ? true : false,
                      onTap: () => cubi.changeThemeApp(isMode: true),
                    ),
                  ),
                  sizedBox,
                  Expanded(
                    child: ItemChoseThemeBuilder(
                      homeImage: AssetsImages.homeLight,
                      searchImage: AssetsImages.searchLight,
                      mode: kMode ? false : true,
                      onTap: () => cubi.changeThemeApp(isMode: false),
                    ),
                  ),
                  sizedBox,
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News Language',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: AppColor.white54,
                            fontFamily: AssetsFontFamily.platypi400,
                            letterSpacing: 1.0,
                          ),
                        ),
                        sizedBox,
                        const NewsLanguageRow(),
                        sizedBox,
                        Text(
                          'News Country',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: AppColor.white54,
                            fontFamily: AssetsFontFamily.platypi400,
                            letterSpacing: 1.0,
                          ),
                        ),
                        sizedBox,
                        PopMenuButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

