import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class CategoryActive extends StatelessWidget {
  const CategoryActive({
    super.key,
    this.radius,
    this.isActive = false,
  });
  final double? radius;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? AvatarGlow(
            animate: true,
            duration: Duration(seconds: 1),
            curve: Curves.linear,
            glowCount: 3,
            glowColor: Color(0xFFFF5C59),
            child: CircleAvatar(
              radius: radius ?? 5.0,
              backgroundColor: AppColor.red,
            ))
        : CircleAvatar(
            radius: radius ?? 5.0,
            backgroundColor: Colors.transparent,
          );
  }
}