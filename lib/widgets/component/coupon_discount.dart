part of '../index.dart';

class CouponDiscountShow extends StatelessWidget {
  final String value;

  const CouponDiscountShow({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    if (value == '0') return Container();
    return Chip(
        label: Text(
      '$value元隐藏券',
    ));
  }
}
