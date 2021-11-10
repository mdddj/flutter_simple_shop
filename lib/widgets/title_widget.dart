// Flutter imports:
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final int? size; // 字体大小
  final Color? color; // 字体颜色
  final String? title; //  文本值
  final FontWeight? fontWeight; // 粗体
  final EdgeInsets? padding;

  const TitleWidget({this.size, this.color, required this.title, this.fontWeight,this.padding,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:padding ?? const EdgeInsets.fromLTRB(20, 5, 20, 0),
      alignment: Alignment.topLeft,
      child: Text(
        title!,
        textAlign: TextAlign.left,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          color: color ?? Colors.black38,
          fontWeight: fontWeight ?? FontWeight.w600,
        ),
      ),
    );
  }
}
