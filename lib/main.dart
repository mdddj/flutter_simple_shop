import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'index.dart';

/// 线上场景: apiHost =  'https://itbug.shop'  apiPort = '443'
const apiHost = 'http://192.168.199.77';
const apiPort = "80";
const kDebugMode = true;
void main() async {

  appInit(() => runApp(const ProviderScope(child: MyApp())));
}


class MyApp extends StatelessWidget {
  final String? title;

  const MyApp({Key? key,this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ThemeBuildWidget(themeBuild: (appThemeSetting) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '典典小卖部',
          theme: MyAppTheme.getTheme(appThemeSetting.themeIndex),
          darkTheme: MyAppTheme.darkTheme,
          themeMode: appThemeSetting.getThemeMode,
          home: const InitBuildWidget(home: App()),
          builder: FlutterSmartDialog.init(loadingBuilder: MyCustomLoadingWidget.new),

        );
      }),
    );
  }
}
