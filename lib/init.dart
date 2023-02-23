import 'dart:convert';
import 'dart:io';

import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/theme/model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'index.dart';

Future<void> appInit(Function start) async {
  WidgetsFlutterBinding.ensureInitialized();
  DDCheckPluginSetting.showLog = false;
  DdCheckPlugin.instance.init(BaseApi.getDio(),initHost: '192.168.199.78',port: 9998, customCoverterResponseData: (model){
    final body = model.response?.data;
    if(body is Map<String,dynamic> ){
      final data = body['data'];
      if(data is String) {
        try {
          final map = jsonDecode(data);
          body['data'] = map;
          return model.copyWith(body: Map.from(body));
        } catch (e) {
          return model;
        }
      }
    }
    return model;
  });
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

void initInstanceObject() {
  GetIt.instance.registerSingleton<Utils>(Utils());
  GetIt.instance.registerSingleton<WidgetUtils>(WidgetUtils());
  GetIt.instance.registerSingleton<NavigatorUtil>(NavigatorUtil());
  GetIt.instance.registerSingleton<Api>(Api());
  GetIt.instance.registerSingleton<TKApiService>(TKApiService());
  GetIt.instance.registerSingleton<BlogApi>(BlogApi());
  GetIt.instance.registerSingleton<UserApi>(UserApi());
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
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
