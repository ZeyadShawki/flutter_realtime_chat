import 'package:dio/dio.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/dio/app_interceptors.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {



  static Dio createBarierDio(String token) {
    final dio = Dio(
      
      BaseOptions(
        
        baseUrl: "http://10.0.2.2:8000",
        receiveTimeout: const Duration(seconds: 1500), // 15 seconds
        connectTimeout: const Duration(seconds: 1500),
        sendTimeout: const Duration(seconds: 1500),
        headers: {
           "Authorization":
                "Bearer $token",
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
      AppInterceptors(),
    ]);

    return dio;
  }
  


 static Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "http://10.0.2.2:8000",
        receiveTimeout: const Duration(seconds: 1500), // 15 seconds
        connectTimeout: const Duration(seconds: 1500),
        sendTimeout: const Duration(seconds: 1500),
        headers: {
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
      AppInterceptors(),
    ]);

    return dio;
  }
}
