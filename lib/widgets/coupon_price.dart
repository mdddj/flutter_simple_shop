part of 'index.dart';

// 券后价小部件
class CouponPriceWidget extends StatelessWidget {
  final String? actualPrice; //  券后价
  final double? originalPrice; //  商品原价
  final double? couponPriceFontSize; // 券后价文本大小
  final double? originalPriceFontSize; // 商品原价文本大小
  final double? interval; // 券后价和原价之间的间隔距离
  final bool? showDiscount; // 是否显示折扣

  const CouponPriceWidget({required this.actualPrice, required this.originalPrice, this.couponPriceFontSize, this.originalPriceFontSize, this.interval, this.showDiscount, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 3.0),
          child: const Text('券后'),
        ),
        Text(
          '¥',
          style: TextStyle(fontSize: 15, color: context.primaryColor.withOpacity(.78)),
        ),
        Text(
          actualPrice.toString(),
          style: TextStyle(color: context.primaryColor),
        ),
        Container(
          margin: EdgeInsets.only(left: interval ?? 2.0),
          child: Text(
            '原价$originalPrice',
            style: context.textTheme.labelSmall?.copyWith(decoration: TextDecoration.lineThrough, decorationColor: context.colorScheme.error),
          ),
        ),
        //多少折
        showDiscount != null && showDiscount! ? _buildDiscount() : const SizedBox()
      ],
    );
  }

  //计算多少折扣
  Widget _buildDiscount() {
    var discountDouble = double.parse(actualPrice!) / originalPrice!;
    var numStr = discountDouble.toStringAsFixed(2);
    numStr = numStr.substring(0, numStr.lastIndexOf('.') + 2);
    var discount = double.parse(numStr) * 10;
    return FSuper(
      lightOrientation: FLightOrientation.LeftBottom,
      backgroundColor: primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: const EdgeInsets.only(left: 10),
      text: '${discount.toStringAsFixed(discount.truncateToDouble() == discount ? 0 : 1)}折',
    );
  }
}
