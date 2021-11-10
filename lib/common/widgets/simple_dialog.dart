// Flutter imports:
import 'package:flutter/material.dart';

// 简单的弹窗
class MySimpleDialog extends StatelessWidget {
  final String message;
  final String? title;
  const MySimpleDialog({Key? key,required this.message, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title ==null ? null : Text(title!),
      content: Text(message),
    );
  }
}
