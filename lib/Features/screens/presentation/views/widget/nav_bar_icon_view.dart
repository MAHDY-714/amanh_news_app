import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/navbar_theme.dart';
import 'package:flutter/material.dart';

class NavBarIconBuilder extends StatelessWidget {
  const NavBarIconBuilder({
    super.key,
    required this.icon,
    this.color,
    this.onPressed,
  });
  final IconData icon;
  final Color? color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: NavBarThemeApp.iconColorNavBarTheme(context),
        size: kWidthConditions(
          context,
          valueIsTrue: 25.0,
          valueIsFalse: 30.0,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
