import 'package:amanh_news_app/core/services/errors/failures.dart';
import 'package:dio/dio.dart';

class ServerFailure extends Failures {
  // constructor
  ServerFailure(super.errorMessage);
  // factory Constructor
  factory ServerFailure.formDioExceptions(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with API Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with API Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with API Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with API Server');
      case DioExceptionType.badResponse:
        return ServerFailure.formBadResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API Server was Canceled');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      case DioExceptionType.unknown:
        return ServerFailure('Ops There was an Error, Please try again');
    }
  }

  ///SocketExceptions

  factory ServerFailure.formBadResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else if (response['results']['code'] == 'RateLimitExceeded') {
      return ServerFailure('Please try again later, Rate Limit Exceeded');
    } else {
      return ServerFailure('Unexpected Error, Please try again later');
    }
  }
}
