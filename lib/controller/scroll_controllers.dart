// Flutter imports:
import 'package:flutter/material.dart';

class ScrollControllers {

  static void jiujiuScrollController(dynamic fun1,dynamic fun2,bool showToTopBtn) {
    var mController = ScrollController();
    mController.addListener((){
      if (mController.offset < 250 && showToTopBtn) {
        fun1();
      } else if (mController.offset >= 200 && showToTopBtn == false) {
        fun2();
      }
    });
  }
}
