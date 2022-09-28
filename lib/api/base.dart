import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/api/exception.dart';
import 'package:dd_js_util/ext/map.dart';
import 'package:dd_js_util/util/log.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../service/user_api.dart';
///添加token到请求头
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




///接口封装
abstract class MyAppCoreApi extends BaseApi {
  MyAppCoreApi(String url, {HttpMethod? httpMethod})
      : super(url, httpMethod: httpMethod ?? HttpMethod.get) {
    intrtceptors.add(MyInterceptor());
    intrtceptors.add(CurlLoggerDioInterceptor());
    intrtceptors.add(PrettyDioLogger());
  }

  @override
  Future<WrapJson> request(
      {bool showErrorMsg = true,
      String? loadingText,
      String contentType = "",
      Map<String, dynamic>? headers,
      bool showDefaultLoading = true,
      data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,bool? returnIsString}) async {
    try{
      final r = await super.request(
          showErrorMsg: showErrorMsg,
          loadingText: loadingText,
          contentType: contentType,
          headers: headers,
          showDefaultLoading: showDefaultLoading,
          data: data,
          responseType: responseType,
          nullParams: nullParams,
          requestEncoder: requestEncoder,
          dioStart: (dio,url){
        kLog('开始请求:$url \n$data\n$params');
        dioStart?.call(dio,url);
      });
      return WrapJson(r);
    }on AppException catch(e){
      kLogErr(e);
      return WrapJson.fromMyServerError(e);
    }
  }
}
