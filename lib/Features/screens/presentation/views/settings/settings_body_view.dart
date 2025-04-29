import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/settings_item_view.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBoxHeight = SizedBox(height: 16.0);
    // const sizedBoxWidth = SizedBox(width: 8.0);
    var cubi = BlocProvider.of<SettingsCubit>(context);
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return BodyColor(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SettingsItemBuilder(
                    title: 'Mode',
                    icon: FontAwesomeIcons.volcano,
                    color: AppColor.redDeep2,
                  ),
                  sizedBoxHeight,
                  RowForChoseThemeBuilder(cubi: cubi),
                  sizedBoxHeight,
                  const SettingsItemBuilder(
                    title: 'Country',
                    icon: TablerIcons.world,
                    color: AppColor.greenDeep,
                  ),
                  sizedBoxHeight,
                  const SettingsItemBuilder(
                    title: 'Language',
                    icon: Icons.translate_rounded,
                    color: AppColor.skyDeep,
                  ),
                  sizedBoxHeight,
                  const SettingsItemBuilder(
                    title: 'About',
                    icon: TablerIcons.info_circle,
                    color: AppColor.orangeDeep,
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
