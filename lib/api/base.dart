part of api;

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
abstract class MyAppCoreApi extends BaseApi {
  MyAppCoreApi(String url, {HttpMethod? httpMethod, bool showDetailLog = false})
      : super(url, httpMethod: httpMethod ?? HttpMethod.get);

  final token = getIt.get<MyTokenInterceptor>();

  bool get isRemoveUserToken => false;

  @override
  Future<WrapJson> request([RequestParams? options]) async {
    options ??= const RequestParams();
    interceptions.clear();
    if (!interceptions.contains(token)) {
      interceptions.add(token);
    }
    if (isRemoveUserToken) {
      interceptions.remove(token);
    }
    try {
      final r = await super.request(options);
      final json = WrapJson(r);
      if (json.isSuccess.not) {
        json.print(() {
          debugPrint("链接:$url");
        });
        throw AppException.appError(
            code: json.getInt('state', defaultValue: 90001),
            msg: json.message,
            data: json.getValue('data'));
      }
      return json;
    } on AppException catch (e) {
      final ex = WrapJson.fromMyServerError(e);
      return ex;
    } catch (e) {
      wtfLog(e);
      return WrapJson.fromMyServerError(
          AppException.appError(code: 9000, msg: "系统错误"));
    }
  }
}

class SApi extends MyAppCoreApi {
  final Map<String, dynamic> apiParams;
  SApi(String url, this.apiParams) : super(url, httpMethod: HttpMethod.post);
  @override
  Future<WrapJson> request([RequestParams? options]) {
    return super.request(R(data: apiParams));
  }
}
