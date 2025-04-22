import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/navbar_theme.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ItemIsActive extends StatelessWidget {
  const ItemIsActive({
    super.key,
    this.radius,
    this.glowRadiusFactor,
    this.isActive = false,
    this.child,
  });
  final double? radius;
  final double? glowRadiusFactor;
  final bool isActive;

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? AvatarGlow(
            animate: isActive ? true : false,
            // ignore: prefer_const_constructors
            duration: Duration(seconds: 1),
            curve: Curves.linear,
            glowCount: 2,
            // glowColor: mode ? AppColor.red : Color(0xFFFF5C59),
            glowColor: isActive
                ? NavBarThemeApp.selectItemColorNavBarTheme(context)
                : Colors.transparent,
            glowRadiusFactor: glowRadiusFactor ?? 1.0,
            child: CircleAvatar(
              radius: radius ?? 5.0,
              backgroundColor: AppColor.red2,
              child: child ?? null,
            ))
        : CircleAvatar(
            radius: radius ?? 5.0,
            backgroundColor: Colors.transparent,
            child: child,
          );
  }
}
