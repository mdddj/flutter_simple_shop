// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// Project imports:
import '../../../../common/utils.dart';

/// 代码输入组件
class CodeInputPage extends StatefulWidget {
  const CodeInputPage({Key? key}) : super(key: key);

  @override
  _CodeInputPageState createState() => _CodeInputPageState();
}

class _CodeInputPageState extends State<CodeInputPage> {
  String _type = 'dart'; // 语言

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MorphingAppBar(
        title: Text('输入代码($_type)'),
        actions: [
          PopupMenuButton<String>(
            initialValue: 'dart',
            itemBuilder: (_) {
              return [
                const PopupMenuItem(
                  value: 'dart',
                  child: Text('dart'),
                ),
                const PopupMenuItem(value: 'C', child: Text('C')),
                const PopupMenuItem(value: 'C++', child: Text('C++')),
                const PopupMenuItem(value: 'Java', child: Text('Java')),
                const PopupMenuItem(value: 'Kotlin', child: Text('Kotlin')),
                const PopupMenuItem(value: 'Swift', child: Text('Swift')),
                const PopupMenuItem(value: 'JavaScript', child: Text('JavaScript')),
                const PopupMenuItem(value: 'YAML', child: Text('YAML')),
              ];
            },
            onSelected: (String codeType) {
              setState(() {
                _type = codeType;
              });
            },
          ),
          IconButton(
              onPressed: () {
                final _codes = Uri.encodeComponent(textEditingController.text);
                Get.back(result: {'code': _codes, 'type': _type});
              },
              icon: const Icon(Icons.check)),
          utils.widgetUtils.marginRight()
        ],
      ),
      body: SizedBox(
        height: utils.widgetUtils.kBodyHeight,
        width: Get.width,
        child: SizedBox(
            height: double.infinity,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var text = TextSpan(
                  text: textEditingController.text,
                );

                var tp = TextPainter(
                  text: text,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                );
                tp.layout(maxWidth: Get.width);

                var lines = (tp.size.height / tp.preferredLineHeight).ceil();
                var maxLines = 10;

                return TextField(
                  controller: textEditingController,
                  maxLines: lines < maxLines ? null : maxLines,
                );
              },
            )),
      ),
    );
  }
}
