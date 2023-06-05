

import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_models/models/brand.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_library_fast/loading_more_list_library_fast.dart';

import '../../../common/index.dart';
import '../../../widgets/loading/custom_loading_more_widget.dart';
import '../components/item.dart';

class BrandRepository extends MyLoadingModel<BrandItem> {
  final String cid;
  int _page = 1;
  bool _hasMore = true;
  BrandRepository(this.cid);

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async  {
   final result = await kApi.getBrandList(param: BrandListParam(cid: cid, pageId: '$_page', pageSize: '20'), requestParamsBuilder: (r)=>r.copyWith(showDefaultLoading: false));
   if(result!=null){
     addAll(result.lists);
     _hasMore = result.lists.isNotEmpty;
     _page++;
     return true;
   }
   return false;
  }

  @override
  bool get hasMore => _hasMore;
}


class BrandListWidget extends StatefulWidget {
  final String cid;
  const BrandListWidget({super.key, required this.cid});

  @override
  State<BrandListWidget> createState() => _BrandListWidgetState();
}

class _BrandListWidgetState extends State<BrandListWidget> with AutomaticKeepAliveClientMixin {
  late final response = BrandRepository(widget.cid);
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MyLoadingMoreList(MyListConfig<BrandItem>(itemBuilder: _itemBuilder,sourceList: response,indicatorBuilder: _indicatorBuilder));
  }

  Widget _itemBuilder(BuildContext context, BrandItem item, int index) {
    return BrandItemCard(storeInfo: item);
  }

  Widget? _indicatorBuilder(BuildContext context, IndicatorStatus status) {
    return CustomLoadingMoreWidget(context, status,retry: (){
      response.refresh(true);
    },emptyChild: const SizedBox());
  }

  @override
  bool get wantKeepAlive =>true;
}
