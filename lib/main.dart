// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:dataoke_sdk/network/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import './provider/providers.dart';
import 'ad.dart';
import 'common/service.dart';
import 'common/utils.dart';
import 'common/widget_util.dart';
import 'controller/app_controller.dart';
import 'service/api_service.dart';
import 'service/blog_api.dart';
import 'service/user_api.dart';
import 'util/navigator_util.dart';

const kDebugMode = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DdTaokeUtil.instance
      .init('http://192.168.199.72', '80', debug: false); //  远程服务器

  /// 初始化单例工具类
  GetIt.instance.registerSingleton<Utils>(Utils());
  GetIt.instance.registerSingleton<WidgetUtils>(WidgetUtils());
  GetIt.instance.registerSingleton<NavigatorUtil>(NavigatorUtil());
  GetIt.instance.registerSingleton<Api>(Api());
  GetIt.instance.registerSingleton<TKApiService>(TKApiService());
  GetIt.instance.registerSingleton<BlogApi>(BlogApi());
  GetIt.instance.registerSingleton<UserApi>(UserApi());

  /// 安卓 https 请求处理
  HttpOverrides.global = MyHttpOverrides();

  await Hive.initFlutter();

  // /// windows 版本处理函数
  // if (!GetPlatform.isWeb &&
  //     (GetPlatform.isWindows || GetPlatform.isLinux || GetPlatform.isMacOS)) {
  //   // setWindowTitle('典典的小卖部 桌面客户端  v2.0.0');
  //   // const windowSize = Size(500, 1041);
  //   // setWindowMaxSize(windowSize);
  //   // setWindowMinSize(windowSize);
  // }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: '典典小卖部',
        theme: ThemeData(
            primaryColor: Colors.white,
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
                  color: Colors.black,
                ),
                iconTheme: IconThemeData(color: Colors.blueGrey),
                actionsIconTheme: IconThemeData(color: Colors.blueGrey),
                backgroundColor: Colors.white),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.pink,
                unselectedLabelStyle: TextStyle(fontSize: 12),
                selectedLabelStyle: TextStyle(fontSize: 12))),
        onInit: () {
          Get.put(AppController());
        },
        home: const AdPage(),
        builder: FlutterSmartDialog.init(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
