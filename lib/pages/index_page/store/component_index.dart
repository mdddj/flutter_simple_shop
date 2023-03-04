// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../index.dart';

/// 首页推荐商店模块
class StoreComponentIndex extends ConsumerWidget {
  const StoreComponentIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final storeData =ref.read(indexProviderRiverpod.select((value) => value.storeData));
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
