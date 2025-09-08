import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/models.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'freezed/env_config.dart';
import 'index.dart';

///本地测试环境
const debugEnvConfig = EnvConfig(
    host: "http://192.168.199.85",
    port: '8082',
    debugMode: true,
    fontFamily: '');

///线上环境
const releaseEnvConfig = EnvConfig(
    host: "https://api.itbug.shop",
    port: '443',
    debugMode: true,
    fontFamily: '');

///切换线上环境使用releaseEnvConfig  const useEnv = releaseEnvConfig;
const useEnv = releaseEnvConfig;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appInit(() {
    runApp(const ProviderScope(child: DdShop()));
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
          themeMode: model.getThemeMode,
          routerConfig: routers,
          builder: FlutterSmartDialog.init(
              loadingBuilder: MyCustomLoadingWidget.new,
              builder: (_, child) => child.scale(context)));
    });
  }
}

class AppTheme {
  static const desktopContainerMaxWidth = 620.0;

  static ThemeData getTheme(ThemeData def) {
    return def.copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.grey,
            elevation: 0.1),
        cardTheme: const CardThemeData(
            elevation: 0,
            margin: EdgeInsets.zero,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            shadowColor: Colors.white),
        navigationRailTheme: NavigationRailThemeData(
            backgroundColor: Colors.white,
            indicatorColor: def.primaryColor,
            selectedIconTheme:
                IconThemeData(color: def.colorScheme.inverseSurface),
            selectedLabelTextStyle: TextStyle(color: def.primaryColor)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent));
  }
}
