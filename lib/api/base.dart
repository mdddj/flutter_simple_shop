part of 'apis.dart';

///添加token到请求头
class MyTokenInterceptor implements Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = UserApi.userToken;
    if (token.isNotEmpty) {
      options.headers.addAll({"Authorization": token});
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

abstract class MyAppCoreApiWithPager extends MyAppCoreApi {
  MyAppCoreApiWithPager(super.url);

  void setPageParam(int page, int pageSize) {
    params.addAll({"page": page, "pageSize": pageSize});
  }
}

///接口封装
abstract class MyAppCoreApi extends MyAppCoreApiWithWrapJson {
  MyAppCoreApi(String url, {HttpMethod httpMethod = HttpMethod.get}) : super(url, httpMethod);
}

class SApi extends MyAppCoreApi {
  final Map<String, dynamic> apiParams;

  SApi(super.url, this.apiParams) : super(httpMethod: HttpMethod.post);

  @override
  Future<WrapJson> request([RequestParams? options]) {
    return super.request(R(data: apiParams));
  }
}
