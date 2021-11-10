// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'utils.dart';

void showToast(String text) {
  utils.showMessage(text);
}

void showLoading(BuildContext context, [String? text]) {
  Widget loadingWidget = const CircularProgressIndicator();
  if (GetPlatform.isIOS) {
    loadingWidget = const CupertinoActivityIndicator();
  }

  Get.dialog(AlertDialog(
    content: SingleChildScrollView(child: Center(child: loadingWidget)),
  ));
}

void closeLoading() {
  if (Get.isDialogOpen!) {
    Get.back();
  }
}

void showConfirmDialog(BuildContext context, String content, Function confirmCallback) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('提示'),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                confirmCallback();
                Navigator.of(context).pop();
              },
              child: const Text('确认'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('取消'),
            ),
          ],
        );
      });
}
