import 'package:amanh_news_app/Features/screens/data/model/news_model/news_model.dart';
import 'package:amanh_news_app/core/services/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<NewsModel>>> getNews({required String category});
}