import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_ume_plus/flutter_ume_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'freezed/env_config.dart';
import 'index.dart';

///本地测试环境
const debugEnvConfig = EnvConfig(
    host: "http://192.168.199.69",
    port: '8082',
    debugMode: true,
    fontFamily: '');

///线上环境
const releaseEnvConfig = EnvConfig(
    host: "https://api.itbug.shop",
    port: '443',
    debugMode: false,
    fontFamily: '');

///切换线上环境使用releaseEnvConfig  const useEnv = releaseEnvConfig;
const useEnv = releaseEnvConfig;

void main() async {
  appInit(() {
    runApp(ProviderScope(
        child: UMEWidget(
      enable: useEnv == debugEnvConfig,
      child: const DdShop(),
    )));
  });
}

class DdShop extends View {
  const DdShop({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ThemeBuildWidget(themeBuild: (model) {
      return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: '典典小卖部',
          theme: AppTheme.getTheme(model.theme),
          darkTheme: model.darkTheme,
          // themeMode: model.getThemeMode,
          themeMode: ThemeMode.light,
          routerConfig: routers,
          builder: FlutterSmartDialog.init(
              loadingBuilder: MyCustomLoadingWidget.new,
              builder: (_, child) => child.scale(context)));
    });
  }
}

class AppTheme {
  static ThemeData getTheme(ThemeData def) {
    return def.copyWith(
        scaffoldBackgroundColor: Colors.grey.shade200,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            scrolledUnderElevation: 0,
            elevation: 0.1),
        cardTheme: const CardTheme(
            elevation: 0,
            margin: EdgeInsets.zero,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ));
  }
}
