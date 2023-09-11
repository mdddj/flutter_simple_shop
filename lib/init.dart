part of index;

/// 初始化
Future<void> appInit(VoidCallback start) async {
  WidgetsFlutterBinding.ensureInitialized();
  await (Connectivity().checkConnectivity());
  initNetUtil();
  initInstanceObject();
  BaseApi.options = BaseOptions(
    connectTimeout: const Duration(seconds: 30),
  );
  if (useEnv.debugMode) {
    DdCheckPlugin().init(BaseApi.getDio(),
        initHost: "192.168.199.78",
        port: 9998,
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
        },
        version: DataFormatVersions.ideaPlugin,
        conectSuccess: (s) {
        });
  }

  await initCaches();
  start.call();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("token", "fsdkjfksdjfkjsdfkfjdsj你好啊");
}

void initNetUtil() {
  BaseApi.host = "${useEnv.host}:${useEnv.port}";
  if (kIsWeb.not && Platform.isAndroid) {
    HttpOverrides.global = MyHttpOverrides();
  }
}

final getIt = GetIt.instance;

void initInstanceObject() {
  getIt.registerSingleton(Utils());
  getIt.registerSingleton(WidgetUtils());
  getIt.registerSingleton(NavigatorUtil());
  getIt.registerSingleton(Api());
  getIt.registerSingleton(UserApi());
  getIt.registerSingleton(FavoritesRepository());
  getIt.registerSingleton(MyTokenInterceptor());
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
  getIt.registerSingleton(MyUpdateUserNameApi());
  getIt.registerSingleton(MyUpdateUserCityApi());
  getIt.registerSingleton(MyUpdateUserJobApi());
  getIt.registerSingleton(MyUserFilesApi());
  getIt.registerSingleton(MyApiWithReportList());
  getIt.registerSingleton(PluginHandle());
  getIt.registerSingleton(MyFindResourceByIdApi());
  getIt.registerSingleton(MyResourceFindCommenApi());
  getIt.registerSingleton(ZheElmApi());
  getIt.registerSingleton(PrivacyCache());
  getIt.registerSingleton(TkXianbaoApi());
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

class PluginHandle extends ServerMessageHandle {
  @override
  void error(error) {
    // TODO: implement error
  }

  @override
  void mapMessageHandle(Map<String, dynamic> data) {
    // TODO: implement mapMessageHandle
  }

  @override
  void stringMessageHandle(String data) {
    // TODO: implement stringMessageHandle
    wtfLog("收到插件的消息:$data");
    if (data == "get-sp-values") {
      // Obtain shared preferences.
      SharedPreferences.getInstance().then((value) {
        final keys = value.getKeys();
        wtfLog(keys);
      });
    }
  }
}
