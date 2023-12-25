import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/app_local_setting_model.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_ume_plus/flutter_ume_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'freezed/env_config.dart';
import 'index.dart';

///本地测试环境
const debugEnvConfig = EnvConfig(host: "http://192.168.199.82", port: '8082', debugMode: true, fontFamily: '');

///线上环境
const releaseEnvConfig = EnvConfig(host: "https://api.itbug.shop", port: '443', debugMode: true, fontFamily: '');

///切换线上环境使用releaseEnvConfig  const useEnv = releaseEnvConfig;
const useEnv = releaseEnvConfig;

//
void main() async {
  appInit(() => runApp(const ProviderScope(
          child: UMEWidget(
        enable: true,
        child: DdShop(),
      ))));
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
          builder: FlutterSmartDialog.init(loadingBuilder: MyCustomLoadingWidget.new, builder: (_, child) => child.scale(context)));
    });
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cons) {
      return const SizedBox();
    });
  }
}
