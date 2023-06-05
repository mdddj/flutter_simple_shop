import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import '../init.dart';
import '../service/user_api.dart';

///添加token到请求头
class MyTokenInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({"Authorization": UserApi.userToken});
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
  MyAppCoreApi(String url, {HttpMethod? httpMethod, bool showDetailLog = false}) : super(url, httpMethod: httpMethod ?? HttpMethod.get);

  final token = getIt.get<MyTokenInterceptor>();

  bool get isRemoveUserToken => false;

  @override
  Future<WrapJson> request([RequestParams? options]) async {
    options ??= const RequestParams();
    interceptions.clear();
    if (!interceptions.contains(token) && isRemoveUserToken.not) {
      interceptions.add(token);
    }
    try {
      final r = await super.request(options);
      final json = WrapJson(r);
      if (json.isSuccess.not) {
          json.print();
        throw AppException.appError(code: json.getInt('state', defaultValue: 90001), msg: json.message,data: json.getValue('data'));
      }
      return json;
    } on AppException catch (e) {
      kLogErr('$e\n${e.dioError?.requestOptions.uri}');
      final ex = WrapJson.fromMyServerError(e);
      return ex;
    } catch (e) {
      kLogErr(e);
      return WrapJson.fromMyServerError(AppException.appError(code: 9000, msg: "系统错误"));
    }
  }
}
