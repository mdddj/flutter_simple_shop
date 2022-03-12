import 'package:url_launcher/url_launcher.dart';

extension StringExt on String {

  ///跳转到浏览器
  void urlLinkTo() {
    canLaunch(this).then((value) {
      if (value) {
        launch(this);
      }
    });
  }
}
