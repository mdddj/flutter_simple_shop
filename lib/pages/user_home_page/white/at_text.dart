// Flutter imports:
// Package imports:
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AtText extends SpecialText {
  static const String flag = '@';
  final int? start;
  final SpecialTextGestureTapCallback? onAtTextTap;

  /// 是否显示@somebody的背景
  final bool showAtBackground;

  AtText(TextStyle textStyle, SpecialTextGestureTapCallback? onTap, {this.showAtBackground = false, this.start, this.onAtTextTap})
      : super(
          flag,
          ' ',
          textStyle,
        );

  @override
  InlineSpan finishText() {
    TextStyle? textStyle = this.textStyle.copyWith(color: Colors.pinkAccent, fontSize: 16.0);

    final atText = toString();

    return showAtBackground
        ? BackgroundTextSpan(
            background: Paint()..color = Colors.pinkAccent.withOpacity(0.15),
            text: atText,
            actualText: atText,
            start: start!,

            ///插入符号可以移动到特殊文本中
            deleteAll: true,
            style: textStyle,
            recognizer: (TapGestureRecognizer()..onTap = () => onAtTextTap?.call(atText)))
        : SpecialTextSpan(text: atText, actualText: atText, start: start!, style: textStyle, recognizer: (TapGestureRecognizer()..onTap = () => onAtTextTap?.call(atText)));
  }
}
