part of constant;

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
