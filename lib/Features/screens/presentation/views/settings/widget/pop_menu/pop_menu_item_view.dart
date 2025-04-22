import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/pop_menu/item_in_pop_menu_item_view.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class PopMenuItemBuilder extends StatelessWidget {
  const PopMenuItemBuilder({
    super.key,
    this.index = 0,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context) * .24,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kMode ? AppColor.redDeep7 : AppColor.redDeep2,
        border: Border.all(
          color: kMode ? AppColor.white24 : AppColor.white24,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemInPopMenuItemBuilder(
            countryCode: kCountriesCode[index],
            isActive: false,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_drop_down,
            size: 25.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
