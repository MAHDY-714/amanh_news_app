import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/news_language/news_language_button.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class NewsLanguageRow extends StatelessWidget {
  const NewsLanguageRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const heightBody = 35.0;
    return SizedBox(
      height: heightBody,
      width: kWidth(context),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: NewsLanguageButton(
              heightBody: heightBody,
              countryCode: 'EG',
              countryLanguage: 'Arabic',
              topEndRadius: 0.0,
              bottomEndRadius: 0.0,
            ),
          ),
          Flexible(
            flex: 1,
            child: NewsLanguageButton(
              heightBody: heightBody,
              countryCode: 'US',
              countryLanguage: 'English',
              color: AppColor.redDeep4,
              fontColor: AppColor.white80,
              topStartRadius: 0.0,
              bottomStartRadius: 0.0,
              topEndRadius: 0.0,
              bottomEndRadius: 0.0,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: NewsLanguageButton(
              heightBody: heightBody,
              countryCode: 'WO',
              topStartRadius: 0.0,
              bottomStartRadius: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}
