import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  List<ArticlesNewsModel>? articlesNewsModel;
  int currentCategory = 6;
  TextEditingController searchTextController = TextEditingController();

  Future<void> getHomeData({required String category}) async {
    emit(HomeLoadingState());
    final newsData = await homeRepo.getNews(
      category: category,
      country: kCountry,
      language: kLanguage,
    );
    newsData.fold(
      (message) {
        log(message.errorMessage);
        emit(HomeFailuresState(errorMessage: message.errorMessage));
      },
      (articleNewsModelItem) {
        articlesNewsModel = articleNewsModelItem;
        log(category.toString());
        // log(articleNewsModelItem[0].toJson().toString());
        emit(HomeSuccessState(articlesNewsModel: articleNewsModelItem));
      },
    );
  }

  void getCategoryHome(index) {
    // var cubiSettings = BlocProvider.of<SettingsCubit>(context);
    log('mode in change theme in home cubit is $kMode');
    currentCategory = index;
    log(currentCategory.toString());
    log(index.toString());
    // emit(HomeLoadingState());
    // cubiSettings.changeThemeApp(isMode: mode);
    getHomeData(category: kNewsCategoriesName[index]);
  }

  void changeThemeHome(context, {required bool mode, required int index}) {
    if (mode) {
      emit(HomeChangeToDarkModeState());
      getCategoryHome(index);
    } else {
      emit(HomeChangeToLightModeState());
      getCategoryHome(index);
    }
  }
}
