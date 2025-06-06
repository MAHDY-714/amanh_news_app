
import 'package:amanh_news_app/Features/screens/data/model/articles_news_model/articles_news_model.dart';
import 'package:amanh_news_app/Features/screens/data/repo/home_repo.dart';
import 'package:amanh_news_app/core/services/api_services.dart';
import 'package:amanh_news_app/core/services/errors/failures.dart';
import 'package:amanh_news_app/core/services/errors/server_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failures, List<ArticlesNewsModel>>> getNews({
    required String category,
    String? country,
    String? language,
  }) async {
    try {
      var data = await apiServices.getNewsData(
        category: category,
        country: country!,
        language: language!,
      );
      List<ArticlesNewsModel> newsModelList = [];
      for (var newsItem in data['results']) {
        newsModelList.add(ArticlesNewsModel.fromJson(newsItem));
      }
      return right(newsModelList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<ArticlesNewsModel>>> getSearchNewsData(
      {required String qValue, String? country}) async {
    try {
      var data = await apiServices.getSearchNewsData(
        qValue: qValue,
        country: country!,
      );
      List<ArticlesNewsModel> newsModelList = [];
      for (var newsItem in data['results']) {
        newsModelList.add(ArticlesNewsModel.fromJson(newsItem));
      }
      return right(newsModelList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioExceptions(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
