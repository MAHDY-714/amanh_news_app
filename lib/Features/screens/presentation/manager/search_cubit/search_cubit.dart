import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitialState());
  final HomeRepo homeRepo;
  List<ArticlesNewsModel>? articlesNewsModel;
  int currentCategory = 6;
  TextEditingController searchTextController = TextEditingController();
  TextDirection textDirection = TextDirection.ltr;
  Future<void> getSearchNewsData({required String qValue}) async {
    emit(SearchNewsLoadingState());
    final newsData = await homeRepo.getSearchNewsData(
      qValue: qValue,
      country: kCountry,
    );
    newsData.fold(
      (message) {
        log(message.errorMessage);
        emit(SearchNewsFailuresState(errorMessage: message.errorMessage));
      },
      (articleNewsModelItem) {
        articlesNewsModel = articleNewsModelItem;
        log(qValue.toString());
        log(articleNewsModelItem.toString());
        // searchTextController.text = qValue;
        emit(SearchNewsSuccessState(articlesNewsModel: articleNewsModelItem));
      },
    );
  }

  void textDirections(String text) {
    emit(ChangeTextDirectionState());
    textDirection = RegExp(r'[\u0600-\u06FF]').hasMatch(text)
        ? TextDirection.rtl
        : TextDirection.ltr;
  }
}
