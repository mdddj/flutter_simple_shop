import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/theme/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'common/view.dart';
import 'index.dart';

/// 线上场景: apiHost =  'https://itbug.shop'  apiPort = '443'
const apiHost = 'http://192.168.199.83';
const apiPort = "80";
const kDebugMode = true;



void main() async {
  appInit(() => runApp(const ProviderScope(child: Root())));
}

class Root extends View {
  const Root({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ThemeBuildWidget(themeBuild: (theme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '典典小卖部',
        theme: MyAppTheme.getTheme(theme.themeIndex),
        darkTheme: MyAppTheme.darkTheme,
        themeMode: theme.getThemeMode,
        home: const MyApp(),
        builder: FlutterSmartDialog.init(
            loadingBuilder: MyCustomLoadingWidget.new,
            builder: (c, child) =>
                MediaQuery(data: MediaQuery.of(c).copyWith(textScaleFactor: 0.9, boldText: false), child: child ?? const SizedBox())),
      );
    });
  }

}
