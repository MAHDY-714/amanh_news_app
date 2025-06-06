import 'dart:developer';

import 'package:amanh_news_app/core/services/api_keys.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static const basicUrl = 'https://newsdata.io/api/1/latest';
  // static const country = 'country=jo';
  // static const language = 'language=en';
  // static const category = 'category=business';
  final Dio dio;

  ApiServices(Dio dio) : dio = Dio()..interceptors.add(myInterceptor());

  Future<Map<String, dynamic>> getNewsData({
    required String category,
    required String country,
    required String language,
  }) async {
    // dio..interceptors.add(myInterceptor());
    var response = await dio.get(
        // '$basicUrl?apiKey=${apiKey}&country=$country&language=$language&category=$category',
        basicUrl,
        queryParameters: {
          'country': country,
          'language': language,
          'category': category,
        });

    return response.data;
  }

  Future<Map<String, dynamic>> getSearchNewsData({
    required String qValue,
    required String country,
  }) async {
    // dio..interceptors.add(myInterceptor());
    var response = await dio.get(
        // '$basicUrl?apiKey=${apiKey}&qInTitle=$qValue&country=$country',
        basicUrl,
        queryParameters: {
          'qInTitle': qValue,
          // 'country': country,
        });

    return response.data;
  }
}

class myInterceptor extends Interceptor {
  int requestCount = 0;
  int currentKeyIndex = 0;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // تبديل المفتاح كل 15 طلبًا
    if (requestCount >= 15) {
      currentKeyIndex = (currentKeyIndex + 1) % ApiKey.apiKeys.length;
      requestCount = 0; // إعادة تعيين العداد
      log('🔄 requestCount ${ApiKey.apiKeys[requestCount]}');
      log('🔄 currentKeyIndex: ${ApiKey.apiKeys[currentKeyIndex]}');
    }

    // تعيين المفتاح الحالي في الطلب
    options.queryParameters['apiKey'] = ApiKey.apiKeys[currentKeyIndex];
    requestCount++;

    print(
        '📤 إرسال الطلب رقم: $requestCount باستخدام المفتاح: ${ApiKey.apiKeys[currentKeyIndex]}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('✅ استجابة ناجحة: ${response.statusCode}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('❌ خطأ في الطلب: ${err.message}');
    handler.next(err);
  }
}
