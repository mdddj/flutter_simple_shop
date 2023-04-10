import 'dart:convert';
import 'dart:io';

import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_check_plugin/model/send_model.dart';
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
  DdCheckPlugin.instance.init(BaseApi.getDio(),initHost: '192.168.100.50',port: 9998, customCoverterResponseData: (model){
    final body = model.response?.data;
    return isValue<Map<String,dynamic>>(body).isNotNull<SendResponseModel?>((value) {
     return  isValue<String>(body['data']).isNotNull<SendResponseModel?>((value2) {
       try {
         final map = jsonDecode(value2);
         body['data'] = map;
         return model.copyWith(body: Map.from(body));
       } catch (e) {
         return model;
       }
      });
    }) ?? model;
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
