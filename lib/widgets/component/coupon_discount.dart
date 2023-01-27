
import 'package:flutter/material.dart';

class CouponDiscountShow extends StatelessWidget {
  final String value;

  const CouponDiscountShow({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (value == '0') return Container();
    return Badge(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: Text(
        '$value元隐藏券',
        style: const TextStyle(
          color: Colors.red,
          fontSize: 12,
        ),
      )
    );
  }
}
