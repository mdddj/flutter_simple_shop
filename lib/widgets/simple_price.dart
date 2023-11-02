part of 'index.dart';

class SimplePrice extends StatelessWidget {
  final String price;
  final String? orignPrice; // 原价
  final String? zhe; // 折扣
  final double? fontSize; // 大小
  final String? hideText; // 隐藏文字
  final Color? color;

  const SimplePrice({super.key, required this.price, this.orignPrice, this.zhe, this.hideText, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return FSuper(
      lightOrientation: FLightOrientation.LeftBottom,
      text: hideText ?? '券后价 ',
      style: TextStyle(fontSize: fontSize != null ? fontSize! * .7 : 12, color: color ?? Colors.red),
      spans: [
        TextSpan(text: '¥', style: TextStyle(color: color ?? Colors.red, fontSize: 14, fontWeight: FontWeight.w800)),
        TextSpan(
          text: '$price ',
          style: context.textTheme.titleLarge?.copyWith(color: color ?? Colors.red, fontSize: fontSize, fontWeight: FontWeight.w800),
        ),
        if (zhe != null)
          TextSpan(
            text: '$zhe折',
            style: const TextStyle(fontSize: 14),
          ),
        if (orignPrice != null && orignPrice != '0') TextSpan(text: '原价$orignPrice', style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey))
      ],
    );
  }
}
