import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/search_text_field.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:amanh_news_app/core/widget/no_body_widget.dart';
import 'package:flutter/material.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyColor(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SearchTextField(),
              const NoBodyView(),
            ],
          ),
        ),
      ),
    );
  }
}
