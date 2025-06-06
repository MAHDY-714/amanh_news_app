

import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/news%20search/search_news_image_in_item_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/news%20search/search_news_title_and_date_in_item_view.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/widget/no_body_widget.dart';
import 'package:amanh_news_app/core/widget/web_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchNewsItemBuilder extends StatelessWidget {
  const SearchNewsItemBuilder({
    super.key,
    required this.articlesNewsModel,
    this.state,
  });
  final ArticlesNewsModel articlesNewsModel;
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.parse(articlesNewsModel.pubDate!);
    DateFormat formatter = DateFormat('EEEE, MMMM d, yyyy');
    String date = formatter.format(dateTime);
    final backgroundNewsItemColor =
        ThemeApp.backgroundNewsItemColorThemeApp(context);
    final borderNewsItemColor = ThemeApp.borderNewsItemColorThemeApp(context);
    return InkWell(
            onTap: () {
        webViewFunction(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          height:
              kHeightConditions(context, valueIsTrue: 250.0, valueIsFalse: 310.0),
          width: double.infinity,
          decoration: BoxDecoration(
            // color: AppColor.white,
            color: backgroundNewsItemColor,
            border: Border.all(
              color: borderNewsItemColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchNewsImageInItemBuilder(
                articlesNewsModel: articlesNewsModel,
              ),
              const SizedBox(height: 4.0),
              SearchNewsTitleAndDateInItemView(
                  title: articlesNewsModel.title ?? '', date: '$date'),
              const SizedBox(height: 4.0),
            ],
          ),
        ),
      ),
    );
  }

  void webViewFunction(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => articlesNewsModel.link != null
            ? WebViewBody(url: articlesNewsModel.link)
            : const NoBodyView(
                errorMessage: 'No URL Available',
              ),
      ),
    );
  }
}
