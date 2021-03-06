
import 'package:demo1/network/http_request.dart';
import 'package:dio/dio.dart';

/// 参数拦截器
class ParamsTokenInterceptor extends Interceptor{

  final String token;
  ParamsTokenInterceptor(this.token);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpRequest.PARAMS_HEADER_KEY] = token;
    options.headers['Accept'] = 'application/json';
    super.onRequest(options, handler);
  }
}