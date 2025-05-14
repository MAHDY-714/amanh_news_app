import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class BodyColor extends StatelessWidget {
  const BodyColor({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: kMode
          ? ThemeApp.darkThemeMode(context)
          : ThemeApp.lightThemeMode(context),
      child: Container(
        height: kHeight(context),
        width: kWidth(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: kMode
                ? AppColor.bodyColor
                : [
                    Colors.white,
                    Colors.white,
                  ],
          ),
        ),
        child: child,
      ),
    );
  }
}
