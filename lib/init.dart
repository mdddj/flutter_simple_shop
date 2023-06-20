part of index;


/// 初始化
Future<void> appInit(VoidCallback start) async {
  WidgetsFlutterBinding.ensureInitialized();
  final result = await (Connectivity().checkConnectivity());
  wtfLog(result);
  if (kAppDebugMode) {
    DdCheckPlugin.instance.init(BaseApi.getDio(), initHost: ip, port: 9999,
        customCoverterResponseData: (model) {
      final body = model.response?.data;
      return isValue<Map<String, dynamic>>(body)
              .isNotNull<SendResponseModel?>((value) {
            return isValue<String>(body['data'])
                .isNotNull<SendResponseModel?>((value2) {
              try {
                final map = jsonDecode(value2);
                body['data'] = map;
                return model.copyWith(body: Map.from(body));
              } catch (e) {
                return model;
              }
            });
          }) ??
          model;
    }, version: DataFormatVersions.version_1);
  }

  initNetUtil();
  initInstanceObject();
  await initCaches();
  start.call();
}

void initNetUtil() {
  BaseApi.host = "$apiHost:$apiPort";
  if (kIsWeb.not && Platform.isAndroid) {
    HttpOverrides.global = MyHttpOverrides();
  }
}

final getIt = GetIt.instance;

void initInstanceObject() {
  getIt.registerSingleton<Utils>(Utils());
  getIt.registerSingleton<WidgetUtils>(WidgetUtils());
  getIt.registerSingleton<NavigatorUtil>(NavigatorUtil());
  getIt.registerSingleton<Api>(Api());
  getIt.registerSingleton<UserApi>(UserApi());
  getIt.registerSingleton<FavoritesRepository>(FavoritesRepository());
  getIt.registerSingleton<MyTokenInterceptor>(MyTokenInterceptor());
  getIt.registerSingleton(MyTaokeApiWithSimilarProducts());
  getIt.registerSingleton(SelectMyRsourceListData());
  getIt.registerSingleton(MyResourceCreateApi());
  getIt.registerSingleton(MyResourceListApi());
  getIt.registerSingleton(PagerUtil());
  getIt.registerSingleton(UserResourceListRepository());
  getIt.registerSingleton(MyFindResourceCategoryApi());
  getIt.registerSingleton(MyApiWithSendEmailValidCode());
  getIt.registerSingleton(MImageUtils());
  getIt.registerSingleton(MyUpdateUserAvatarApi());
  getIt.registerSingleton(MyDeleteUserResourceApi());
}

Future<void> initCaches() async {
  if (kIsWeb) {
    Hive.initFlutter();
  } else {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
  }
  await kApi.objectAdapterInit();
  await AppThemeUtil().registerAdapterAndOpenBox();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
