

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

extension WrapJsonEx on WrapJson {
  void ifSuccessPop(BuildContext context) {
    if (isSuccess) {
      toast(message);
      context.pop();
    } else {
      context.showSimpleDialog(message);
    }
  }

  void simpleToast(){
    if (isSuccess) {
      toast(message);
    } else {
      showIosDialog(message);
    }
  }
}