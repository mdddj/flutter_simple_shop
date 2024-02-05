part of 'index.dart';

/// 初始化
Future<void> appInit(VoidCallback start) async {
  WidgetsFlutterBinding.ensureInitialized();
  await (Connectivity().checkConnectivity());
  initNetUtil();
  initInstanceObject();
  await initCaches();
  start.call();
}

void initNetUtil() {
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
  getIt.registerSingleton(MyFindResourceByIdApi());
  getIt.registerSingleton(MyResourceFindCommenApi());
  getIt.registerSingleton(ZheElmApi());
  getIt.registerSingleton(PrivacyCache());
  getIt.registerSingleton(TkXianbaoApi());
  getIt.registerSingleton(NewApiDioInstance());
  getIt.registerSingleton(NewApiByCarouselProductsApi());
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

class MyCategoryCache extends DdPluginHiveBox<CategoryWrapper> {
  MyCategoryCache() : super("dd_category_box");

  @override
  Future<Box<CategoryWrapper>> get getBox => Hive.isBoxOpen(boxName)
      ? Future.value(Hive.box(boxName))
      : Hive.openBox(boxName);
}
