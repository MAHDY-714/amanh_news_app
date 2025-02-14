import 'dart:developer';

import 'package:amanh_news_app/Features/screens/presentation/manager/cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/news_categories_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/news/new_list_view.dart';
import 'package:amanh_news_app/core/widget/circle_indicator_loading_widget.dart';
import 'package:amanh_news_app/core/widget/no_body_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var articleNewsModel = BlocProvider.of<HomeCubit>(context).articleNewsModel;
    log(articleNewsModel.toString());
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              NewsCategoriesListView(),
              ConditionalBuilder(
                condition: state is! HomeLoadingState,
                builder: (
                  context,
                ) {
                  if (state is HomeSuccessState) {
                    return NewsListView(
                        articleNewsModel: state.articleNewsModel);
                  } else if (state is HomeFailuresState) {
                    return NoBodyView(
                      errorMessage: state.errorMessage,
                    );
                  } else {
                    return const CircleIndicatorLoadingWidget();
                  }
                },
                fallback: (context) => const CircleIndicatorLoadingWidget(),
              ),
            ],
          ),
        );
      },
    );
  }
}
