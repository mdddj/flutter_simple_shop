// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../http_request.dart';

/// 参数拦截器
class ParamsTokenInterceptor extends Interceptor{

  final String token;
  ParamsTokenInterceptor(this.token);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpRequest.paramsHeaderKey] = token;
    options.headers['Accept'] = 'application/json';
    super.onRequest(options, handler);
  }
}
