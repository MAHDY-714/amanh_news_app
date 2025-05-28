import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
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
    animationController.forward();
    animationController.reverseDuration = const Duration(milliseconds: 700);
    super.initState();
  }

  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<double> listHeight = [
      kHeight(context) * 0.3,
      kHeight(context) * 0.35,
      kHeight(context) * 0.16,
      kHeight(context) * 0.42,
    ];
    var cubi = Cubits.settings(context);

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
                  child: cubi.currentContent),
            );
          }),
    );
  }
}
