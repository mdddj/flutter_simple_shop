part of pages;

/// 品牌的商品列表
class DetailProductList extends StatelessWidget {
  final List<ProductModel> list;

  const DetailProductList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(12),
      sliver: SliverWaterfallFlow.count(
          crossAxisCount: context.waterfallFlowCrossAxisCountWithBrand,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [...list.map((e) => _builderList(context, list.indexOf(e)))]),
    );
  }

  Widget _builderList(BuildContext context, int index) {
    var brandDetailGoodsList = list[index];
    return GestureDetector(
      onTap: () {
        NavigatorUtil.gotoGoodsDetailPage(
            context, brandDetailGoodsList.id.toString());
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildImage(brandDetailGoodsList),
              const SizedBox(width: 12),
              Expanded(child: _buildData(brandDetailGoodsList))
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildData(ProductModel item) {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: const TextStyle( fontSize: 15, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          CouponDiscountShow(
              value: item.couponPrice.toString().replaceAll('.0', '')),
          SimplePrice(
            price: item.actualPrice.toString(),
            orignPrice: item.originalPrice.toString(),
          ),
        ],
      ),
    );
  }

  // 商品主图
  Widget _buildImage(ProductModel item) {
    var imageSize = const Size(80, 80);
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ExtendedImage.network(
          MImageUtils.magesProcessor(item.mainPic),
          width: imageSize.width,
          height: imageSize.height,
          borderRadius: BorderRadius.circular(5),
          shape: BoxShape.rectangle,
        ));
  }
}
