part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeSuccessState extends HomeState {
  final List<ArticlesNewsModel>? articlesNewsModel;

  HomeSuccessState({required this.articlesNewsModel});
}

final class HomeFailuresState extends HomeState {
  final String errorMessage;

  HomeFailuresState({required this.errorMessage});
}

final class HomeChangeToDarkModeState extends HomeState {}

final class HomeChangeToLightModeState extends HomeState {}

final class SearchNewsLoadingState extends HomeState {}

final class SearchNewsSuccessState extends HomeState {
  final List<ArticlesNewsModel>? articlesNewsModel;

  SearchNewsSuccessState({required this.articlesNewsModel});
}

final class SearchNewsFailuresState extends HomeState {
  final String errorMessage;

  SearchNewsFailuresState({required this.errorMessage});
}
