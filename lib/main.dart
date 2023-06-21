import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'freezed/env_config.dart';
import 'index.dart';

///测试环境
const debugEnvConfig = EnvConfig(
    host: "http://192.168.100.55",
    port: '80',
    debugMode: true,
    fontFamily: 'LXGWWenKaiMono');

///线上环境
const releaseEnvConfig = EnvConfig(
    host: "https://itbug.shop",
    port: '9445',
    debugMode: false,
    fontFamily: 'LXGWWenKaiMono');

///切换线上环境使用releaseEnvConfig eg. const useEnv = releaseEnvConfig;
const useEnv = debugEnvConfig;

void main() async {
  appInit(() => runApp(const ProviderScope(child: DdShop())));
}

class DdShop extends View {
  const DdShop({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ThemeBuildWidget(themeBuild: (model) {
      return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: '典典小卖部',
          theme: model.theme,
          darkTheme: model.darkTheme,
          themeMode: model.getThemeMode,
          routerConfig: routers,
          builder: FlutterSmartDialog.init(
              loadingBuilder: MyCustomLoadingWidget.new,
              builder: (_, child) => child.scale(context)));
    });
  }
}
