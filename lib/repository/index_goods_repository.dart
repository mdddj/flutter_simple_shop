// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/product_list_param.dart';
import 'package:dd_js_util/util/log.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../controller/app_controller.dart';
import '../widgets/loading_more_list_indicator.dart';
import '../widgets/waterfall_goods_card.dart';

/// 首页商品列表
class IndexGoodsRepository extends LoadingMoreBase<Product> {
  int pageindex = 1;
  bool forceRefresh = false;
  int pageSize = 50; // 每页条数，默认为100，最大值200，若小于10，则按10条处理，每页条数仅支持输入10,50,100,200

  @override
  bool get hasMore => true;


  @override
  Future<bool> loadData([bool isloadMoreAction = false]) async {
    var isSuccess = false;
    final result = await DdTaokeSdk.instance.getProducts(param: ProductListParam(pageId: '$pageindex',pageSize: '$pageSize'),error: (c,m,d){
      kLog('加载首页推荐产品失败:$c $m $d');
    });
    kLog("加载首页产品列表");
    if(result!=null){
      kLog('首页推荐产品数量返回:${result.list?.length}');
      addAll(result.list??[]);
      pageindex++;
      isSuccess = true;
    }else{
      kLog('加载首页产品数据失败');
      isSuccess = false;
    }
    return isSuccess;
  }
}



class IndexProducts extends StatelessWidget {
  final IndexGoodsRepository repository;
  const IndexProducts({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingMoreSliverList(
        SliverListConfig<Product>(
          extendedListDelegate:
          const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
          itemBuilder: (context, item, index) {
            return WaterfallGoodsCard(item);
          },
          sourceList: repository,
          padding: const EdgeInsets.only(left: 12, right: 12),
          lastChildLayoutType: LastChildLayoutType.foot,
          indicatorBuilder: (context, state) {
            return LoadingMoreListCostumIndicator(state, isSliver: true);
          },
        ),
        key: AppController.find.indexProductKey);
  }
}
