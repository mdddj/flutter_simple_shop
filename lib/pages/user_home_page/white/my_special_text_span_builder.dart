// Flutter imports:
// Package imports:
import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'at_text.dart';
import 'code_text.dart';
import 'image_render.dart';
import 'product_render.dart';

class MySpecialTextSpanBuilder extends SpecialTextSpanBuilder {
  final bool showAtBackground;
  final SpecialTextGestureTapCallback? atTextOnTap;
  final SpecialTextGestureTapCallback? goodsCardOnTapCallBack;
  final BuildContext context;

  MySpecialTextSpanBuilder({
    this.showAtBackground = false,
    this.goodsCardOnTapCallBack,
    this.atTextOnTap,
    required this.context
  });

  @override
  TextSpan build(String data, {TextStyle? textStyle, SpecialTextGestureTapCallback? onTap}) {
    var textSpan = super.build(data, textStyle: textStyle, onTap: onTap);
    return textSpan;
  }

  @override
  SpecialText? createSpecialText(String flag, {TextStyle? textStyle, SpecialTextGestureTapCallback? onTap, int? index}) {
    if (flag == '' || index==null) return null;

    ///索引是开始标志的结束索引，所以文本开始索引应该是Index -(flag.length-1)
    if (isStart(flag, AtText.flag)) {
      return AtText(textStyle!, onTap, start: index - (AtText.flag.length - 1), showAtBackground: showAtBackground, onAtTextTap: atTextOnTap);
    } else if (isStart(flag, ImageText.flag)) {
      return ImageText(textStyle!, context, start: index - (ImageText.flag.length - 1), onClick: onTap);
    } else if (isStart(flag, GoodsText.flag)) {
      return GoodsText(textStyle!, start: index - (GoodsText.flag.length - 1), onGoodsTap: goodsCardOnTapCallBack);
    } else if (isStart(flag, CodeText.flag)) {
      return CodeText(textStyle!, start: index - (CodeText.flag.length - 1));
    }
    return null;
  }
}
