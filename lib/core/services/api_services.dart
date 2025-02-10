import 'package:amanh_news_app/core/services/api_keys.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static const basicUrl = 'https://newsapi.org/v2/top-headlines';
  static const country = 'country=us';
  // static const category = 'category=business';
  final Dio dio;

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> getNews({required String category}) async {
    var response = await dio
        .get('$basicUrl?apiKey=${ApiKey.apiKey}&$country&category=$category');
    return response.data;
  }
}
/*
  
  required basicUrl=> https://newsapi.org/v2/top-headlines?
  country=> country=us
  category=> category=business
  required apiKey=> api_key=14f592ccc2224d99b30fafe13d
  https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=14f592ccc2224d99b30fafe13d7837d8


  */
