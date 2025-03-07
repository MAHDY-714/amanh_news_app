import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  List<ArticlesNewsModel>? articlesNewsModel;
  int currentCategory = 6;

  Future<void> getHomeData({required String category}) async {
    emit(HomeLoadingState());
    final newsData = await homeRepo.getNews(category: category);
    newsData.fold(
      (message) {
        log(message.errorMessage);
        emit(HomeFailuresState(errorMessage: message.errorMessage));
      },
      (articleNewsModelItem) {
        articlesNewsModel = articleNewsModelItem;
        log(category.toString());
        log(articleNewsModelItem[0].toJson().toString());
        emit(HomeSuccessState(articlesNewsModel: articleNewsModelItem));
      },
    );
  }

  void getCategoryHome(index) {
    currentCategory = index;
    log(currentCategory.toString());
    log(index.toString());
    getHomeData(category: kNewsCategoriesName[index]);
  }

// void changeThemeApp({required bool isMode}) {
//     log('the cubit for Setting started');
//     if (isMode) {
//       CacheHelper.saveData(key: 'isMode', value: true); // dark mode
//       emit(ChangeThemeToDarkModeSettingsState());
//     } else {
//       CacheHelper.saveData(key: 'isMode', value: false); // light mode
//       emit(ChangeThemeToDarkModeSettingsState());
//     }
//   }
}
