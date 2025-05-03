import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/items_in_settings_list_view.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  const ItemsInSettingsListView(),
                  RowForChoseThemeBuilder(cubi: cubi),
                  sizedBoxHeight,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
