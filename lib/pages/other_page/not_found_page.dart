// Flutter imports:
import 'package:flutter/material.dart';

// 资源未找到
class NotFoundPage extends StatelessWidget {
  final String? title;
  final String? desc;

  const NotFoundPage({this.title, this.desc,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title??'404'),
      ),
      body: Text(desc??'资源未找到!'),
    );
  }
}
