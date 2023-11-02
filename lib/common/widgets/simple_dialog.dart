part of '../index.dart';

// 简单的弹窗
class MySimpleDialog extends StatelessWidget {
  final String message;
  final String? title;

  const MySimpleDialog({super.key, required this.message, this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title == null ? null : Text(title!),
      content: Text(message),
    );
  }
}
