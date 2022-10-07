import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:html/parser.dart';

class CodeText extends SpecialText {
  static const String flag = '<code';
  final int start;
  final SpecialTextGestureTapCallback? onWidgetTap;

  CodeText(TextStyle textStyle, {required this.start, this.onWidgetTap}) : super(flag, 'codeEnd/>', textStyle);

  @override
  InlineSpan finishText() {
    final allText = '$flag${getContent()} codeEnd/>';
    var html = parse(allText);
    var img = html.getElementsByTagName('code').first;
    final codeString = img.attributes['content'] ?? '';
    final typeString = img.attributes['language'] ?? '';
    return ExtendedWidgetSpan(
        actualText: toString(),
        start: start,
        deleteAll: true,
        child: SizedBox(
          width: double.infinity,
          height: 300,
          child: SyntaxView(
            code: Uri.decodeComponent(codeString),
            syntax: buildType(typeString),
            fontSize: 14,
            withZoom: true,
            withLinesCount: true,
            syntaxTheme: SyntaxTheme.ayuLight(),
            expanded: true,
          ),
        ));
  }

  Syntax buildType(String type) {
    switch (type) {
      case 'dart':
        return Syntax.DART;
      case 'C':
        return Syntax.C;
      case 'C++':
        return Syntax.CPP;
      case 'Java':
        return Syntax.JAVA;
      case 'Kotlin':
        return Syntax.KOTLIN;
      case 'Swift':
        return Syntax.SWIFT;
      case 'JavaScript':
        return Syntax.JAVASCRIPT;
      case 'YAML':
        return Syntax.YAML;
      default:
        return Syntax.DART;
    }
  }
}
