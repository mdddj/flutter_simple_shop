import 'package:dio/dio.dart';

/// 请求错误类
class ErrorEntity {
  int? code;
  String? message;

  ErrorEntity({this.code, this.message});

  // 错误信息
  ErrorEntity createErrorEntity(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        {
          return ErrorEntity(code: -1, message: '请求取消');
        }
      case DioExceptionType.connectionTimeout:
        {
          return ErrorEntity(code: -1, message: '连接超时');
        }
      case DioExceptionType.sendTimeout:
        {
          return ErrorEntity(code: -1, message: '请求超时');
        }
      case DioExceptionType.receiveTimeout:
        {
          return ErrorEntity(code: -1, message: '响应超时');
        }
      case DioExceptionType.badResponse:
        {
          try {
            var errCode = error.response!.statusCode;
            switch (errCode) {
              case 400:
                {
                  return ErrorEntity(code: errCode, message: '请求语法错误');
                }
              case 403:
                {
                  return ErrorEntity(code: errCode, message: '服务器拒绝执行');
                }
              case 404:
                {
                  return ErrorEntity(code: errCode, message: '无法连接服务器');
                }
              case 405:
                {
                  return ErrorEntity(code: errCode, message: '请求方法被禁止');
                }
              case 500:
                {
                  return ErrorEntity(code: errCode, message: '服务器内部错误');
                }
              case 502:
                {
                  return ErrorEntity(code: errCode, message: '无效的请求');
                }
              case 503:
                {
                  return ErrorEntity(code: errCode, message: '服务器挂了');
                }
              case 505:
                {
                  return ErrorEntity(code: errCode, message: '不支持HTTP协议请求');
                }
              case 302:
                {
                  return ErrorEntity(code: errCode, message: '没有操作权限');
                }
              default:
                {
                  return ErrorEntity(code: errCode, message: '未知错误');
                }
            }
          } on Exception catch (_) {
            return ErrorEntity(code: -1, message: '未知错误');
          }
        }
      default:
        {
          return ErrorEntity(code: -1, message: error.message);
        }
    }
  }
}
