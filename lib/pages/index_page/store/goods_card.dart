part of '../../index.dart';

/// 品牌下方的商品列表
class StoreGoodsCard extends StatelessWidget {
  final BrandItem? storeInfo; // 接收一个品牌参数

  const StoreGoodsCard({super.key, this.storeInfo});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.8, mainAxisSpacing: 12, crossAxisSpacing: 6),
      itemBuilder: (BuildContext context, int index) {
        final storeGoods = storeInfo!.goodslist[index];
        return StoreGoodsItemLayout(storeGoods: storeGoods);
      },
      itemCount: 3,
    );
  }
}
