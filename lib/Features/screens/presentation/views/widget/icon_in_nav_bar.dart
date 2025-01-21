import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class IconInNavBar extends StatelessWidget {
  const IconInNavBar({
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
        color: color ?? Colors.white,
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
