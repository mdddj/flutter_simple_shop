import 'package:dd_js_util/api/base.dart';
import 'package:dio/dio.dart';
import '../service/user_api.dart';

class MyInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {}

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({"Authorization": UserApi.userToken});
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {}
}

abstract class MyBaseApi extends BaseApi {
  MyBaseApi(String url,{HttpMethod? httpMethod}) : super(url,httpMethod: httpMethod??HttpMethod.get) {
    intrtceptors.add(MyInterceptor());
  }
}
