import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/view.dart';
import 'index.dart';
import 'router.dart';

/// 线上场景: apiHost =  'https://itbug.shop'  apiPort = '9445'
const ip = '192.168.199.76';
const apiHost = 'http://$ip';
const apiPort = "80";
// const apiHost = "https://itbug.shop";
// const apiPort = "9445";
const kAppDebugMode = true;

void main() async {
  appInit(() => runApp(const ProviderScope(child: Root())));
}

class Root extends View {
  const Root({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ThemeBuildWidget(themeBuild: (theme) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: '典典小卖部',
        theme: ThemeData(useMaterial3: true, fontFamily: "LXGWWenKai"),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: theme.getThemeMode,
        routerConfig: routers,
        builder: FlutterSmartDialog.init(
            loadingBuilder: MyCustomLoadingWidget.new,
            builder: (c, child) => MediaQuery(
                data: MediaQuery.of(c)
                    .copyWith(textScaleFactor: 0.9, boldText: false),
                child: child ?? const SizedBox())),
      );
    });
  }
}



///自定义主题
// ThemeData _builderTheme(ThemeData theme) {
//  return theme.copyWith(
//    cardTheme: theme.cardTheme.copyWith(
//      elevation: 0,
//      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: BorderSide.none),
//      margin: EdgeInsets.zero,
//      color: Colors.white
//    ),
//    appBarTheme: theme.appBarTheme.copyWith(
//      elevation: 0,
//      backgroundColor: Colors.white,shadowColor: Colors.white
//    )
//  );
// }