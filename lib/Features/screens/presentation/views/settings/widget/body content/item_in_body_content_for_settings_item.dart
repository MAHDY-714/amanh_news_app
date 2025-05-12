import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/country_flag_icon.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class ItemInBodyContentForSettingsItem extends StatelessWidget {
  const ItemInBodyContentForSettingsItem({
    super.key, 
    this.countryCode,
    this.countryLanguage,
    this.indexItem,
    this.indexItemSelected,
  });

  final String? countryCode;
  final String? countryLanguage;
  final int? indexItem;
  final int? indexItemSelected;

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(width: 8.0);
    final textTheme = TextThemeApp.themeCodeInSettings(context);
    bool isSelected = indexItem == indexItemSelected ? true : false;
    return SizedBox(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Checkbox.adaptive(value: true, onChanged: (value) {}),
            MSHCheckbox(
              value: isSelected,
              onChanged: (value) {},
              size: 20.0,
              colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                checkedColor: AppColor.greenDeep, // dark mode
                uncheckedColor: AppColor.white54,
                // light mode
              ),
            ),
            space,
            CountryFlagIcon(countryCode: countryCode ?? 'WO', fontSize: 16.0),
            space,
            Text(
              countryLanguage ?? 'WO',
              // '',
              textAlign: TextAlign.center,
              style: textTheme,
            ),
          ],
        ),
      ),
    );
  }
}
