part of 'home_cubit.dart';

sealed class HomeState{}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeSuccessState extends HomeState {
    final List<ArticleNewsModel>? articleNewsModel;

  HomeSuccessState({required this.articleNewsModel});
}

final class HomeFailuresState extends HomeState {
  final String errorMessage;

  HomeFailuresState({required this.errorMessage});
}
