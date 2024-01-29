part of 'part.dart';

const _timeout = Duration(seconds: 5);
final dioCheckPlugin = DdCheckPlugin();

class NewApiDioInstance {
  Dio? dio;

  static NewApiDioInstance get instance => getIt.get<NewApiDioInstance>();

  Future<Dio> getDio(BaseOptions options) async {
    if (dio != null) {
      return dio!;
    }
    print(options.baseUrl);
    dio = Dio(options);
    await dioCheckPlugin
        .init(dio!,
            initHost: '192.168.199.76',
            port: 9998,
            projectName: 'shop',
            timeOut: const Duration(milliseconds: 1200))
        .catchError((e) => debugPrint('$e'));
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
        sendTimeout: _timeout);
  }
}

extension ApiErrorMessageEx on Object {
  String get errorMessage {
    return switch (this) {
      BaseApiException() => (this as BaseApiException).message,
      _ => "$this"
    };
  }
}

void w(dynamic message) {
  debugPrint('🌚warn:$message');
}
