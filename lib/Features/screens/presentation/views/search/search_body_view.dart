import 'package:amanh_news_app/Features/screens/presentation/manager/search_cubit/search_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/news%20search/search_news_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/widget/search_text_field.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:amanh_news_app/core/widget/circle_indicator_loading_widget.dart';
import 'package:amanh_news_app/core/widget/no_body_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubi = Cubits.search(context);
    var formKey = GlobalKey<FormState>();

    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return PopScope(
          canPop: true,
          onPopInvokedWithResult: (isPop, result) {
            if (isPop) {
              cubi.searchTextController.clear();
              formKey.currentState?.reset();
            }
          },
          child: Form(
            key: formKey,
            child: BodyColor(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SearchTextField(cubi: cubi, formKey: formKey),
                      ConditionalBuilder(
                        condition: cubi.searchTextController.text.isNotEmpty &&
                            cubi.articlesNewsModel != null,
                        builder: (context) {
                          return state is! SearchNewsLoadingState
                              ? cubi.articlesNewsModel!.isNotEmpty
                                  ? SearchNewsListView(
                                      articlesNewsModel: cubi.articlesNewsModel)
                                  : const NoBodyView(
                                      errorMessage: 'No Results Found')
                              : const CircleIndicatorLoadingWidget();
                        },
                        fallback: (context) {
                          return state is SearchNewsFailuresState
                              ? NoBodyView(
                                  errorMessage: state.errorMessage,
                                )
                              : const NoBodyView();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
