// import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/item_chose_theme_view.dart';
// import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/settings_item_view.dart';
// import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
// import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
// import 'package:amanh_news_app/core/utils/constance.dart';
// import 'package:flutter/material.dart';

// class SettingsBox extends StatelessWidget {
//   const SettingsBox({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     const sizedBox = SizedBox(height: 8.0);
//     return Container(
//       // height: kHeight(context) * .7,
//       // width: kWidth(context) * .8,
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           const SettingsItemBuilder(),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: Container(
//               width: kWidth(context) * .7,
//               height: kHeight(context) * .3,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Flexible(
//                     child: ItemChoseThemeBuilder(
//                       homeImage: AssetsImages.homeDark,
//                       searchImage: AssetsImages.searchDark,
//                       mode: kMode ? true : false,
//                       // onTap: () => cubi.changeThemeApp(isMode: true),
//                     ),
//                   ),
//                   Flexible(
//                     child: ItemChoseThemeBuilder(
//                       homeImage: AssetsImages.homeLight,
//                       searchImage: AssetsImages.searchLight,
//                       mode: kMode ? false : true,
//                       // onTap: () => cubi.changeThemeApp(isMode: false),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           sizedBox,
//           const SettingsItemBuilder(),
//           sizedBox,
//           const SettingsItemBuilder(),
//           sizedBox,
//           const SettingsItemBuilder(),
//         ],
//       ),
//     );
//   }
// }
