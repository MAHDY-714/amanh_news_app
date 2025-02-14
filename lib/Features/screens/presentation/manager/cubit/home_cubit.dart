import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/model/news_model/article_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  List<ArticleNewsModel>? articleNewsModel;

  Future<void> getHomeData({required String category}) async {
    emit(HomeLoadingState());
    final newsData = await homeRepo.getNews(category: category);
    newsData.fold(
      (message) {
        log(message.errorMessage);
        emit(HomeFailuresState(errorMessage: message.errorMessage));
      },
      (articleNewsModelItem) {
        articleNewsModel = articleNewsModelItem;
        emit(HomeSuccessState(articleNewsModel: articleNewsModelItem));
      },
    );
  }
}
