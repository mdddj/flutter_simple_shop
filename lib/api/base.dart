import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import '../service/user_api.dart';

///添加token到请求头
class MyInterceptor implements Interceptor {
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

  final token = MyInterceptor();

  bool get isRemoveUserToken => false;

  @override
  Future<WrapJson> request([RequestParams? options]) async {
    options ??= const RequestParams();
    intrtceptors.clear();
    if (!intrtceptors.contains(token)) {
      intrtceptors.add(token);
    }
    try {
      final r = await super.request(options.copyWith(interceptorCall: (it) {
        final list = List<Interceptor>.from(it);
        if (isRemoveUserToken) {
          list.removeWhere((element) => element is MyInterceptor);
        }
        return list;
      }));
      final json = WrapJson(r);
      if (json.isSuccess.not) {
        throw AppException.appError(code: json.getInt('state', defaultValue: 90001), msg: json.message);
      }
      return json;
    } on AppException catch (e) {
      final ex = WrapJson.fromMyServerError(e);
      kLog(ex.data);
      return ex;
    } catch (e) {
      kLogErr(e);
      return WrapJson.fromMyServerError(AppException.appError(code: 9000, msg: "系统错误"));
    }
  }
}
