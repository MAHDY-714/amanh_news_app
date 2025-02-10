import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/model/news_model/news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitialState());
  final HomeRepo homeRepo;
  List<NewsModel>? newsModel;

  Future<void> getHomeData({required String category}) async {
    emit(HomeLoadingState());
    var newsData = await homeRepo.getNews(category: category);
    newsData.fold(
      (message) {
        log(message.errorMessage);
        emit(HomeFailuresState(errorMessage: message.errorMessage));
      },
      (newsModelItem) {
        newsModel = newsModelItem;
        emit(HomeSuccessState());
      },
    );
  }
}
