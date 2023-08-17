import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/app_local_setting_model.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'freezed/env_config.dart';
import 'index.dart';

///本地测试环境
const debugEnvConfig = EnvConfig(host: "http://192.168.199.65", port: '8082', debugMode: true, fontFamily: '');

///线上环境
const releaseEnvConfig = EnvConfig(host: "https://itbug.shop", port: '9445', debugMode: false, fontFamily: '');

///切换线上环境使用releaseEnvConfig  const useEnv = releaseEnvConfig;
const useEnv = releaseEnvConfig;

void main() async {
  appInit(() => runApp(const ProviderScope(child: DdShop())));
}

class DdShop extends View {
  const DdShop({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ThemeBuildWidget(themeBuild: (model) {
      return MaterialApp.router(debugShowCheckedModeBanner: false, title: '典典小卖部', theme: model.theme, darkTheme: model.darkTheme, themeMode: model.getThemeMode, routerConfig: routers, builder: FlutterSmartDialog.init(loadingBuilder: MyCustomLoadingWidget.new, builder: (_, child) => child.scale(context)));
    });
  }
}

///处理表情包
// ThemeData _buildThemeData(ThemeData defaultTheme) {
//   return defaultTheme.copyWith(
//     inputDecorationTheme: defaultTheme.inputDecorationTheme.copyWith(fillColor: Colors.white, filled: true),
//     scaffoldBackgroundColor: Colors.grey.shade200,
//     appBarTheme: defaultTheme.appBarTheme.copyWith(backgroundColor: Colors.white),
//     bottomNavigationBarTheme: defaultTheme.bottomNavigationBarTheme.copyWith(backgroundColor: Colors.white, elevation: 0),
//     cardTheme: defaultTheme.cardTheme.copyWith(color: Colors.white, elevation: 0.01, margin: EdgeInsets.zero),
//     bottomSheetTheme: defaultTheme.bottomSheetTheme.copyWith(backgroundColor: Colors.white),
//     dialogTheme: defaultTheme.dialogTheme.copyWith(backgroundColor: Colors.white),
//   );
// }
