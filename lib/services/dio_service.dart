import 'package:dio/dio.dart';

class DioClient {
  static Dio buildDioClient(String base) {
    final dio = Dio()..options = BaseOptions(baseUrl: base);
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
  }
}