
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
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




///接口封装
abstract class MyAppCoreApi extends BaseApi {
  MyAppCoreApi(String url, {HttpMethod? httpMethod,bool showDetailLog = false})
      : super(url, httpMethod: httpMethod ?? HttpMethod.get) {
    intrtceptors.add(MyInterceptor());
    if(showDetailLog){
      intrtceptors.add(CurlLoggerDioInterceptor());
      intrtceptors.add(PrettyDioLogger());
    }
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
      DioStart? dioStart,bool? returnIsString,bool isFullUrl = false}) async {
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
          requestEncoder: requestEncoder,isFullUrl: isFullUrl);
      final json = WrapJson(r);
      if(json.isSuccess.not){
        throw AppException.appError(code: 90001,msg: json.message);
      }
      return json;
    }on AppException catch(e){
      kLogErr(e);
      return WrapJson.fromMyServerError(e);
    }catch(e){
      kLogErr(e);
      return WrapJson.fromMyServerError(AppException.appError(code: 9000,msg: "系统错误"));
    }
  }
}
