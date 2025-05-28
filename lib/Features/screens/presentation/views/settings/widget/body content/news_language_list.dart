import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/item_in_body_content_for_settings_item.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLanguageList extends StatelessWidget {
  const NewsLanguageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubi = Cubits.settings(context);
    const space = SizedBox(height: 8.0);
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return SizedBox(
          height: kHeight(context) * 0.155,
          width: kWidth(context),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            itemCount: cubi.listLanguage.length,
            separatorBuilder: (context, index2) => space,
            itemBuilder: (context, index) {
              return ItemInBodyContentForSettingsItem(
                countryCode: cubi.selectLanguageFlag(index: index),
                countryLanguage:
                    cubi.selectLanguageName(index: index).toUpperCase(),
                color: cubi.selectLanguageColor(context, index: index),
                icon: cubi.selectLanguageIcon(index: index),
                onTap: () {
                  cubi.changeLanguageNews(context, index: index);
                },
              );
            },
          ),
        );
      },
    );
  }
}
