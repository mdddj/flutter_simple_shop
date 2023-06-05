import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:dd_models/models/brand.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../../util/image_util.dart';
import '../../../util/number_cover.dart';
import '../../index_page/store/goods_item_layout.dart';
import '../brand_detail.dart';

/// 品牌布局
class BrandItemCard extends StatelessWidget {
  final BrandItem storeInfo;

  const BrandItemCard({Key? key, required this.storeInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          children: [_buildHeader(context), _buildGoodsGrid()],
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
          _buildHeaderFlexCore(
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]!),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: ImageView(image: MyImage.network(url: MImageUtils.magesProcessor(storeInfo.brandlogo),params: ImageParams(size: 50,borderRadius: BorderRadius.circular(8)))),
              ),
              1),
          _buildHeaderFlexCore(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        storeInfo.brandname,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '已售${Numeral(storeInfo.sales)}件 >',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      )
                    ],
                  ),
                  Text(
                    '单品低至${storeInfo.maxdiscount}折  |  领券最高减${storeInfo.maxdiscountamount}',
                    style:
                        const TextStyle(fontSize: 12, color: Colors.redAccent),
                  )
                ],
              ),
              5),
        ],
      ),
    );
  }

  /// 产品列表
  Widget _buildGoodsGrid() {
    return WaterfallFlow.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 12,
      physics: const NeverScrollableScrollPhysics(),
      children:storeInfo.goodslist.isNotEmpty ? [
        StoreGoodsItemLayout(storeGoods: storeInfo.goodslist[0]),
        StoreGoodsItemLayout(storeGoods: storeInfo.goodslist[1]),
        StoreGoodsItemLayout(storeGoods: storeInfo.goodslist[2]),
      ] : [],
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
