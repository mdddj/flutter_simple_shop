part of '../../index.dart';

/// 品牌布局
class BrandItemCard extends StatelessWidget {
  final BrandItem storeInfo;

  const BrandItemCard({super.key, required this.storeInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          children: [_buildHeader(context), _buildGoodsGrid(context)],
        ),
      ),
    );
  }

  /// 品牌信息栏目
  Widget _buildHeader(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.navToWidget(to: BrandDetailPage(brandId: storeInfo.brandid.toString()));
      },
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageView(
                image: MyImage.network(
                    url: MImageUtils.magesProcessor(storeInfo.brandlogo), params: ImageParams(size: 38, borderRadius: BorderRadius.circular(8), shape: BoxShape.rectangle, fit: BoxFit.cover))),
          ),
          _buildHeaderFlexCore(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        storeInfo.brandname,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '已售${Numeral(storeInfo.sales)}件 >',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      )
                    ],
                  ),
                  Text(
                    '单品低至${storeInfo.maxdiscount}折  |  领券最高减${storeInfo.maxdiscountamount}',
                    style: const TextStyle(fontSize: 12, color: Colors.redAccent),
                  )
                ],
              ),
              5),
        ],
      ),
    );
  }

  /// 产品列表
  Widget _buildGoodsGrid(BuildContext context) {
    return WaterfallFlow.count(
      padding: EdgeInsets.zero,
      crossAxisCount: context.waterfallFlowCrossAxisCountWithBrandProduct,
      shrinkWrap: true,
      crossAxisSpacing: 12,
      physics: const NeverScrollableScrollPhysics(),
      children: storeInfo.goodslist.isNotEmpty
          ? storeInfo.goodslist.getRange(0, 3).map((e) {
              return StoreGoodsItemLayout(storeGoods: e);
            }).toList()
          : [],
    );
  }

  Widget _buildHeaderFlexCore(Widget widget, int flex) {
    return Flexible(
      flex: flex,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        child: widget,
      ),
    );
  }
}
