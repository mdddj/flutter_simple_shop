import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../../../../common/utils.dart';

/// 代码输入组件
class CodeInputPage extends StatefulWidget {
  const CodeInputPage({Key? key}) : super(key: key);

  @override
  CodeInputPageState createState() => CodeInputPageState();
}

class CodeInputPageState extends State<CodeInputPage> {
  String _type = 'dart'; // 语言

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                final myCodes = Uri.encodeComponent(textEditingController.text);
                Navigator.pop(context,{'code': myCodes, 'type': _type});
              },
              icon: const Icon(Icons.check)),
          utils.widgetUtils.marginRight()
        ],
      ),
      body: SizedBox(
        height: context.kBodyHeight,
        width: context.screenWidth,
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
                tp.layout(maxWidth: context.screenWidth);

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
