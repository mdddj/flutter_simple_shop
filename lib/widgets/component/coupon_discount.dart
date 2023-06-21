part of widgets;

class CouponDiscountShow extends StatelessWidget {
  final String value;

  const CouponDiscountShow({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (value == '0') return Container();
    return Chip(
        label: Text(
          '$value元隐藏券',
        ));
  }
}
