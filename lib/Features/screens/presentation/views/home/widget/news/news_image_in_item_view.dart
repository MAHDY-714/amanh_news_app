import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/widget/circle_indicator_loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsImageInItemBuilder extends StatelessWidget {
  const NewsImageInItemBuilder({super.key, required this.articlesNewsModel});
  final ArticlesNewsModel articlesNewsModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: kWidth(context),
        clipBehavior: Clip.antiAlias,
        decoration: Decorations.imageInNewsItemBuilderBoxDecoration(context),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: articlesNewsModel.imageUrl ?? '',
          errorWidget: (context, url, error) => Image.asset(AssetsImages.logo),
          placeholder: (context, url) => CircleIndicatorLoadingWidget(
            strokeWidth: 11,
            radiusOut: 12,
            radiusIn: 11,
            progressIndicatorTrackColor: AppColor.redDeep8,
            outlinedIndicatorColor: AppColor.redDeep10,
          ),
        ),
      ),
    );
  }
}
