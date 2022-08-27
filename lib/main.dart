import 'dart:io';
import 'package:dataoke_sdk/network/util.dart';
import 'package:dd_js_util/api/base.dart';
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
import 'common/styles.dart';
import 'common/utils.dart';
import 'common/widget_util.dart';
import 'controller/app_controller.dart';
import 'service/api_service.dart';
import 'service/blog_api.dart';
import 'service/user_api.dart';
import 'util/navigator_util.dart';

const kDebugMode = true;
// 线上场景: apiHost =  'https://itbug.shop'  apiPort = '443'
const apiHost = 'http://192.168.100.26';
const apiPort = '80';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseApi.host = "$apiHost:$apiPort";
  DdTaokeUtil.instance.init(apiHost, apiPort, debug: false);
  GetIt.instance.registerSingleton<Utils>(Utils());
  GetIt.instance.registerSingleton<WidgetUtils>(WidgetUtils());
  GetIt.instance.registerSingleton<NavigatorUtil>(NavigatorUtil());
  GetIt.instance.registerSingleton<Api>(Api());
  GetIt.instance.registerSingleton<TKApiService>(TKApiService());
  GetIt.instance.registerSingleton<BlogApi>(BlogApi());
  GetIt.instance.registerSingleton<UserApi>(UserApi());
  HttpOverrides.global = MyHttpOverrides();
  await Hive.initFlutter();
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
        theme: buildLighitTheme(context),
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
