import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// Flutter imports:
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// Project imports:
import '../network/interceptor/auth_interceptor.dart';

/// app 控制器
class AppController extends GetxController {
  static AppController get find => Get.find<AppController>();

  Rxn bgBytes = Rxn<Uint8List>();
  bool isWeChatBrowser = false;
  bool showTip = true; // 是否显示提醒

  @override
  void onInit() {
    adStart();
    getIsWeChatBrowser();
    super.onInit();
  }

  /// 请求中添加授权信息
  void addAuthDetail(Dio dio) {
    dio.interceptors.add(AuthInterceptor());
  }

  /// 加载启动图到内存中
  void adStart() async {
    final bytes = await rootBundle.load('assets/images/ad.png');
    final list = bytes.buffer.asUint8List();
    bgBytes.value = list;
    update();
  }


  /// 判断是否为微信浏览器
  Future<void> getIsWeChatBrowser() async {
    if(GetPlatform.isWeb){
      final result = await DdJsUtil.isWeChatBrowser;
      isWeChatBrowser = result;
    }
  }

  /// 检测新版本
  Future<void> getNewVersion() async {
    // if (!kIsWeb) {
    //   final serverVersion = await tkApi.getLastVersion();
    //   if (serverVersion.isNotEmpty) {
    //     final map = jsonDecode(serverVersion);
    //     if(GetPlatform.isAndroid){
    //       final packInfo = await PackageInfo.fromPlatform();
    //       if (map['version'] != packInfo.version) {
    //         // 判定为有新版本
    //         await Get.dialog(NewVersionDialog(map: map));
    //       }
    //     }
    //   }
    // }
  }
}
