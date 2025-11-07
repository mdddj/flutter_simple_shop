part of 'part.dart';

const _timeout = Duration(seconds: 5);

class NewApiDioInstance {
  Dio? dio;

  static NewApiDioInstance get instance => getIt.get<NewApiDioInstance>();

  Future<Dio> getDio(BaseOptions options) async {
    if (dio != null) return dio!;
    dio = Dio(options);
    return dio!;
  }
}

abstract class MyBaseApi<T> extends BaseApi<T> {
  MyBaseApi(super.url, {super.httpMethod});

  @override
  Future<Dio> getDio(BaseOptions baseOptions) async {
    final r = await NewApiDioInstance.instance.getDio(baseOptions);
    return r;
  }

  @override
  Future<BaseOptions> getOptions(RequestParams param) async {
    return BaseOptions(
      baseUrl: '${useEnv.host}:${useEnv.port}',
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      sendTimeout: _timeout,
    );
  }

  @override
  ISet<Interceptor> get interceptions =>
      ISet([getIt.get<MyTokenInterceptor>()]);

  @override
  void beforeHandleDartTypeModel(
      DartTypeModel model, RequestParams requestParams, Response response) {
    final serverJson = model.whenOrNull(json: (json) => json) ?? {};
    if (serverJson['success'] case final bool success when !success) {
      final serverMsg = serverJson['message'];
      final code = serverJson['state'];
      throw BaseApiException.businessException(message: "$serverMsg [$code]");
    }
    super.beforeHandleDartTypeModel(model, requestParams, response);
  }
}

extension ApiErrorMessageEx on Object {
  String get errorMessage {
    return switch (this) {
      BaseApiException() => (this as BaseApiException).message,
      _ => "$this",
    };
  }
}

extension DartTypeModelApiEx on DartTypeModel {
  Map<String, dynamic>? get tryGetMap {
    if (whenOrNull(json: (value) => value['data'])
        case final Map<String, dynamic> data) {
      return data;
    }
    return null;
  }

  bool? get tryGetBoolData {
    return whenOrNull(bool: (value) => value);
  }

  bool get isSuccess {
    return switch (this) {
      JsonData(:final value) => value['success'] == true,
      _ => false
    };
  }

  String get apiMessage {
    return switch (this) {
      JsonData(:final value) => value['message'],
      _ => ''
    };
  }

  int get apiStateCode {
    return switch (this) { JsonData(:final value) => value['state'], _ => "" };
  }
}

void w(dynamic message) {
  debugPrint('🌚warn:$message');
}
