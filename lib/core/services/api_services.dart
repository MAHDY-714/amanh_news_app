import 'package:amanh_news_app/core/services/api_keys.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static const basicUrl = 'https://newsdata.io/api/1/latest';
  static const country = 'country=jo';
  static const language = 'language=en';
  // static const category = 'category=business';
  final Dio dio;

ApiServices({required this.dio});

  Future<Map<String, dynamic>> getNews({required String category}) async {
    var response = await dio.get(
      '$basicUrl?$country&&apiKey=${ApiKey.apiKey2}&category=$category',
      // options: Options(
      //   headers: {
      //     'Content-Type': 'application/json',
      //     'Authorization': ApiKey.apiKey,
      //     'Accept': 'application/json',
      //     'Accept-Language': 'ar-EG,ar;q=0.9',
      //   },),
    );

    return response.data;
  }
}
/*
  
  required basicUrl=> https://newsapi.org/v2/top-headlines?
  country=> country=us
  category=> category=business
  required apiKey=> api_key=14f592ccc2224d99b30fafe13d
  https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=14f592ccc2224d99b30fafe13d7837d8
  
  required basicUrl=> https://newsdata.io/api/1/latest?
  country=> country=us
  category=> q=business
  required apiKey=> api_key=pub_7176642dc43622a78e1d091f7dd18ad09ed68
  https://newsdata.io/api/1/latest?apikey=pub_7176642dc43622a78e1d091f7dd18ad09ed68&country=us&q=Business


  */
