import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/home%20news/home_news_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeNewsListViewHome extends StatelessWidget {
  const HomeNewsListViewHome({super.key, required this.articlesNewsModel});
  final List<ArticlesNewsModel>? articlesNewsModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return HomeNewsItemBuilder(
                articlesNewsModel: articlesNewsModel![index],
              );
            },
            itemCount: articlesNewsModel!.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
      );
    });
  }
}
