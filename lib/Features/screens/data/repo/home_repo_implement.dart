import 'package:amanh_news_app/Features/screens/data/model/news_model/news_model.dart';
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
  Future<Either<Failures, List<NewsModel>>> getNews(
      {required String category}) async {
    try {
      var data = await apiServices.getNews(category: category);
      List<NewsModel> newsModelList = [];
      for (var newsItem in data['articles']) {
        newsModelList.add(NewsModel.fromJson(newsItem));
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
