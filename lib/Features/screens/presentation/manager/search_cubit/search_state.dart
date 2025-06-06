part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitialState extends SearchState {}

final class SearchNewsLoadingState extends SearchState {}

final class SearchNewsSuccessState extends SearchState {
  final List<ArticlesNewsModel>? articlesNewsModel;

  SearchNewsSuccessState({required this.articlesNewsModel});
}

final class SearchNewsFailuresState extends SearchState {
  final String errorMessage;

  SearchNewsFailuresState({required this.errorMessage});
}

final class ChangeTextDirectionState extends SearchState {}
