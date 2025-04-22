import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/pop_menu/pop_menu_button.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/item_chose_theme_view.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: ItemChoseThemeBuilder(
                      homeImage: AssetsImages.homeLight,
                      searchImage: AssetsImages.searchLight,
                      mode: kMode ? false : true,
                      onTap: () => cubi.changeThemeApp(isMode: false),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: Container(
                      alignment: AlignmentDirectional.topStart,
                      height: kHeight(context) * .25,
                      child: const Column(
                        children: [
                          PopMenuButton(),
                        ],
                      ),
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
