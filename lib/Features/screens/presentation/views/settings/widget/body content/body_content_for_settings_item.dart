import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/about_for_app_body.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_countries_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_language_list.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class BodyContentForItemSettings extends StatefulWidget {
  const BodyContentForItemSettings({
    super.key,
    required this.cubi,
    required this.index,
  });

  final SettingsCubit cubi;
  final int index;

  @override
  State<BodyContentForItemSettings> createState() =>
      _BodyContentForItemSettingsState();
}

class _BodyContentForItemSettingsState extends State<BodyContentForItemSettings>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
      reverseDuration: const Duration(milliseconds: 700),
    );
    animationController.forward(from: 0.0);
    animationController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> listBodyContent = [
      RowForChoseThemeBuilder(cubi: widget.cubi),
      const NewsCountriesList(),
      const NewsLanguageList(),
      const AboutForAppBody(),
    ];

    final List<double> listHeight = [
      kHeight(context) * 0.3,
      kHeight(context) * 0.35,
      kHeight(context) * 0.13,
      kHeight(context) * 0.42,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return AnimatedContainer(
              duration: animationController.duration!,
              curve: Curves.linearToEaseOut,
              height: animationController.value * listHeight[widget.index],
              width: kWidth(context),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: listBodyContent[widget.index]),
            );
          }),
    );
  }
}
