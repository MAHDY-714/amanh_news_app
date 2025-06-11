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
/*\
page=1749325560350775429
page=1749312972924518249
page=1749307072706631101
page=1749300935797401671
page=1749292721779748223
page=1749284514591512651
page=1749281617163636521
page=1749275620527982980
page=1749247681142316604
page=1749247676970758767
page=1749243629061362519
page=1749221823665348956
page=1749214921308765101
page=1749210666698332763
page=1749207134582250609
page=1749202476710190179


 */
