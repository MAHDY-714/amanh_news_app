import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class NewsImageInItemBuilder extends StatelessWidget {
  const NewsImageInItemBuilder({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: kWidth(context),
        decoration: Decorations.imageInNewsItemBuilderBoxDecoration(context,
            image: image),
      ),
    );
  }
}
