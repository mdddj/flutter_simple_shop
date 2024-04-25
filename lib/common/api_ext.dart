import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../api/apis.dart';

extension WrapJsonEx on WrapJson {
  void ifSuccessPop(BuildContext context) {
    if (isSuccess) {
      toast(message);
      context.pop();
    } else {
      dialog(message);
    }
  }

  void simpleToast({VoidCallback? ifOk}) {
    if (isSuccess) {
      toast(message);
      ifOk?.call();
    } else {
      dialog(message);
    }
  }
}

///显示一个系统弹窗
void dialog(String message) {
  showIosDialog(message,
      okText: '我知道了', cancelText: '取消', title: const Text('系统提示'));
}

extension BaseApiExceptionEx on BaseApiException {
  void showErrorMessage() {
    toast(message);
  }
}

extension ExceptionTryHandleEx on Object {
  ///尝试处理api接口异常
  void tryHandleException() {
    switch (this) {
      case final BaseApiException exception:
        {
          exception.showErrorMessage();
        }
      default:
        {
          toast('App内部错误');
        }
    }
  }
}
