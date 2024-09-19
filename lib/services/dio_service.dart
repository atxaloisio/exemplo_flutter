import 'package:dio/dio.dart';
import 'package:exemplo_flutter/models/login_response.dart';
import 'package:exemplo_flutter/services/auth_service.dart';
import 'package:exemplo_flutter/services/token_service.dart';

class DioService {
  static Dio buildDioClient(String base) {
    final dio = Dio()..options = BaseOptions(
        baseUrl: base,
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
      );
    dio.interceptors.addAll(
      [
        TokenInterceptor(),
        // DioLogInterceptor(logger: logger),
        // LoggyDioInterceptor()
      ],
    );
    return dio;
  }
}

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler,) async {
    super.onRequest(options, handler);
    TokenService tokenService = await TokenService.getInstance();
    LoginResponse loginResponse = tokenService.retrieve();
    if (loginResponse.isValidToken()) {
      options.headers['Authorization'] = 'Bearer ${loginResponse.accessToken}';
    } else {
      AuthService authService = AuthService();
      LoginResponse response = await authService.refresh(loginResponse.refreshToken!);
      options.headers['Authorization'] = 'Bearer ${response.accessToken}';
      await tokenService.store(loginResponse);
    }
  }
}