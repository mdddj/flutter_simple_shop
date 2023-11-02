part of '../../index.dart';

/// 价钱布局
class PriceLayout extends StatelessWidget {
  final String original; // 原价
  final String discounts; // 优惠价
  const PriceLayout({super.key, required this.original, required this.discounts});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text('¥ $original', style: context.textTheme.bodySmall?.copyWith(color: Colors.red)),
        if (discounts.isNotEmpty) Text('¥$discounts', maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: Colors.grey, decoration: TextDecoration.lineThrough))
      ],
    );
  }
}
