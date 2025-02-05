import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyColor(
      child: Column(
        children: [
          Text('my home news screen'),
        ],
      ),
    );
  }
}