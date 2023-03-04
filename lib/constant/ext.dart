import 'package:url_launcher/url_launcher_string.dart';


extension StringExt on String {

  ///跳转到浏览器
  void urlLinkTo() {
    canLaunchUrlString(this).then((value) {
      if (value) {
        launchUrlString(this);
      }
    });
  }
}



