import 'package:amanh_news_app/core/widget/pop_menu/item_in_pop_menu_item_view.dart';
import 'package:amanh_news_app/core/widget/pop_menu/pop_menu_item_view.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class PopMenuButton extends StatelessWidget {
  const PopMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final heightPosition = kHeight(context) * .055;
    final widthPosition = kWidth(context) * 0.0;
    final color = kMode ? AppColor.redDeep7 : AppColor.red3;
    return PopupMenuButton(
      // position: PopupMenuPosition.under,
      popUpAnimationStyle: AnimationStyle(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
        reverseDuration: const Duration(milliseconds: 500),
        reverseCurve: Curves.decelerate,
      ),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(color: AppColor.white24, width: 1.0),
      ),
      offset: Offset(widthPosition, heightPosition),
      padding: const EdgeInsets.all(0.0),

      icon: const PopMenuItemBuilder(
        index: 0,
      ),
      constraints: BoxConstraints(
        maxHeight: kHeight(context) * .19,
        maxWidth: 100.0,
      ),
      itemBuilder: (context) {
        return List.generate(
          kCountriesCode.length,
          (index) => PopupMenuItem(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            height: kHeight(context) * .03,
            value: kCountriesCode[index],
            child: ItemInPopMenuItemBuilder(
              countryCode: kCountriesCode[index],
              isActive: kCountriesCode[index] !=
                  kCountriesCode[index], // Example condition for active state
            ),
          ),
        );
      },
      onSelected: (value) {
        // Handle the selected country code here
        print('Selected country code: $value');
      },
    );
  }
}
