// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'aes_util.dart';
import 'interceptor/params_token_interceptor.dart';
import 'request_util.dart';
import 'result_model.dart';

/// 典典的小卖部
/// 网络请求工具封装
/// v2
/// 2020-12-1 14:11:37
///
class HttpRequest {
  static Dio? dio;

  // static const String host = 'http://192.168.43.44:8089/tkapi';
  static const String host = 'http://192.168.199.118:8089/tkapi';

  /// 网络请求超时时间 10秒
  /// 注意超过十秒钟服务器可能不会 返回正确数据!
  /// timeToken 如果超过十秒钟系统认定此次请求非法操作
  /// 返回示例:
  /// {
  ///     'state': 500,
  ///     'message': '非法操作:请求超时',
  ///     'data': null
  /// }
  static const int timeOut = 10000;

  /// get 请求
  static const String getMethod = 'get';

  /// post 请求
  static const String postMethod = 'post';

  /// 不能改
  /// 固定值
  /// 服务器如果查不到这个header值
  /// 将返回非法操作提示
  /// 返回示例
  /// (同上) 非法操作,缺少参数
  static const String paramsHeaderKey = 'params_token';

  /// 参数key
  /// 值是aes字符串
  static const String dateKey = 'data';

  /// 请求成功code
  static const int successCode = 200;

  /// 发起一个网络请求
  /// @[url] 接口地址. (require)
  /// @[data] 参数. 列子:{'id':'10553823'}
  /// @[method] 请求方法.
  static Future<String> req(String url, {Map<String, String?>? data, String? method,ServerError? onError}) async {
    /// 请求前的准备
    method = method ?? getMethod;
    onError = onError ?? serverErrorDefaultHandle;
    var dio = createInstance()!;
    data = data ?? <String, String>{};
    var serverEncryptionData = RequestUtil.handleParams(data);
    dio.interceptors.add(ParamsTokenInterceptor(serverEncryptionData.paramsToken));

    /// 准备完成

    /// 开始请求数据
    Response? response;

    try {
      switch (method) {
        case getMethod:
          response = await dio.request(url, queryParameters: {dateKey: serverEncryptionData.data}, options: Options(method: getMethod));
          break;
        case postMethod:
          response = await dio.request(url, data: {dateKey: serverEncryptionData.data}, options: Options(method: postMethod));
          break;
        default:
          break;
      }
      if (response != null) {
        var result = Result.fromJson(response.data);
        if(result.state==successCode){
          var data = AesUtil.aesDecrypt(result.data!);
          return data;
        }else{
          onError(result.state,result.message,url);
        }
      }
    } on DioException catch (_) {
      return '';
    }
    return '';
  }

  /// 创建dio实例
  static Dio? createInstance() {
    if (dio == null) {
      var options = BaseOptions(baseUrl:host, connectTimeout: const Duration(milliseconds: timeOut));
      dio = Dio(options);
    }
    return dio;
  }
}

/// 定义服务器错误处理函数host
typedef ServerError = void Function(int? code,String? message,String api);

/// 默认错误处理
/// 这里只打印了一下服务器返回的报错信息
void serverErrorDefaultHandle(int? code,String? message,String api){
}
