// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../provider/index_provider.dart';
import '../component/component_title.dart';
import 'goods_card.dart';
import 'store_card.dart';

/// 首页推荐商店模块
class StoreComponentIndex extends StatelessWidget {
  const StoreComponentIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storeData = context.watch<IndexProvider>().storeData;
    if (storeData != null) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: [
                utils.widgetUtils.marginTop(height: 12),
                const ComponentTitle(title: '今日品牌推荐', height: 24),
                StoreItemCard(storeInfo: storeData.lists![0]),
                utils.widgetUtils.marginTop(),
                StoreGoodsCard(
                  storeInfo: storeData.lists![0],
                ),
                utils.widgetUtils.marginTop()
              ],
            ),
          );
    } else {
      return Container();
    }
  }
}
