import 'dart:io';
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../service/blog_api.dart';
import '../service/user_api.dart';
import '../util/navigator_util.dart';
import 'service.dart';
import 'widget_util.dart';
DdTaokeSdk get kApi => DdTaokeSdk.instance;
/// 工具类
class Utils {
  WidgetUtils get widgetUtils => GetIt.instance.get<WidgetUtils>();
  NavigatorUtil get routerUtils => GetIt.instance.get<NavigatorUtil>();
  Api get api => GetIt.instance.get<Api>();
  UserApi get userApi => GetIt.instance.get<UserApi>();
  BlogApi get blogApi => GetIt.instance.get<BlogApi>();

  // 显示一条消息
  void showMessage(String msg) {
    SmartDialog.showToast(msg);
  }

  void log(String msg) {
    Logger().i(msg);
  }

  // 选择文件
  Future<File?> selectFile() async {
    if ( Platform.isWindows) {
      // final file = OpenFilePicker()
      //   ..filterSpecification = {
      //     '图片文件 (*.jpg; *.png)': '*.jpg;*.png',
      //   }
      //   ..defaultFilterIndex = 0
      //   ..defaultExtension = 'jpg'
      //   ..title = '选择图片上传';

      // final result = file.getFile();
      // if (result != null) {
      //   return result;
      // }
    } else if (Platform.isAndroid) {
      // var _imagePicker =
      //     await ImagePicker().pickImage(source: ImageSource.gallery);
      // var file = File(_imagePicker!.path);
      // return file;
      return null;
    }
    return null;
  }

  //处理图片不带http
  String imageHeaderHandle(String url) {
    if (url.indexOf('//') == 0) {
      return 'https:$url';
    }
    return url;
  }

  // 复制
  void copy(String? text, {String? message}) {
    Clipboard.setData(ClipboardData(text: text));
    showMessage(message ?? '复制成功');
  }

  Future<void> navToBrowser(String url) async {
    if (await canLaunchUrlString(url)) {
      // 判断当前手机是否安装某app. 能否正常跳转
      await launchUrlString(url);
    } else {
      copy(url, message: '跳转url失败,链接已复制到剪贴板');
    }
  }

  // 跳转到浏览器
  Future<void> openLink(String url, {String urlYs = ''}) async {
    await urlToApp(url, urlYs);
  }

  // 跳转url
  Future<void> urlOpen(String url) async{
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  /// url 跳转到 app  使用约束
  Future<void> urlToApp(String url, String urlYs) async {
    /// 如果是windows平台,直接跳转到浏览器打开链接
    if (Platform.isWindows) {
      await launchUrlString(url);
      return;
    }
    var myUrl = url;
    myUrl = '$urlYs${urlHandle(url)}';
    if (await canLaunchUrlString(myUrl)) {
      // 判断当前手机是否安装某app. 能否正常跳转
      await launchUrlString(myUrl);
    } else {
      await launchUrlString(url);
    }
  }

  // 打开淘宝
  Future<void> openTaobao(String url) async {
    await urlToApp(url, 'taobao://');
  }

  String urlHandle(String url) {
    var myUrl = url;
    if (myUrl.indexOf('http://') == 0) {
      myUrl = myUrl.replaceAll('http://', '');
    } else if (myUrl.indexOf('https://') == 0) {
      myUrl = myUrl.replaceAll('https://', '');
    }
    return myUrl;
  }

}

Utils get utils => GetIt.instance.get<Utils>();
