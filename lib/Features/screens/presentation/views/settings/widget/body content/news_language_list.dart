import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/item_in_body_content_for_settings_item.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class NewsLanguageList extends StatelessWidget {
  const NewsLanguageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 8.0);

    int indexItemSelected = 2;
    return SizedBox(
      height: kHeight(context) * 0.13,
      width: kWidth(context),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: kListCountries.length,
        separatorBuilder: (context, index) => space,
        itemBuilder: (context, index) {
          return ItemInBodyContentForSettingsItem(
            countryCode: kListCountries[index],
            countryLanguage: kListLanguage[index],
            indexItem: index,
            indexItemSelected: indexItemSelected,
          );
        },
      ),
    );
  }
}
