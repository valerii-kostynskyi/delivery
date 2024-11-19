import 'package:delivery/data/data_source/auth_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthInterceptor extends Interceptor {
  final AuthDataSource authDataSource;
  final Dio dio;
  final String api;

  AuthInterceptor(this.authDataSource, this.dio, this.api);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await authDataSource.getAuthToken();
    if (kDebugMode) {
      print('AuthInterceptor token.accessToken - $token');
    }
    options.headers['Authorization'] = 'Bearer $token';
    options.baseUrl = api;
    return handler.next(options);
  }
}
