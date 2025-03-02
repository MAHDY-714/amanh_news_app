import 'package:amanh_news_app/Features/screens/presentation/views/home/home_body_view.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: kMode
            ? ThemeApp.darkThemeMode(context)
            : ThemeApp.lightThemeMode(context),
        child: HomeBodyView());
  }
}
