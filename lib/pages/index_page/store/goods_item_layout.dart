part of pages;

/// 商品卡片布局
class StoreGoodsItemLayout extends StatelessWidget {
  final BrandGoodslist storeGoods;

  const StoreGoodsItemLayout({Key? key, required this.storeGoods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorUtil.gotoGoodsDetailPage(context, storeGoods.id.toString());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return ImageView(
                      image: MyImage.network(
                          url: MImageUtils.magesProcessor(storeGoods.mainpic),
                          params: ImageParams(
                              size: constraints.maxWidth,
                              borderRadius: BorderRadius.circular(12))));
                },
              ).clipRadius(12),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          PriceLayout(
              original: '${storeGoods.actualprice}'.replaceAll('.0', ''),
              discounts: '${storeGoods.originprice}'.replaceAll('.0', ''))
        ],
      ),
    );
  }
}
