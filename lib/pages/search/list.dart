import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/riverpod/search_riverpod.dart';
import 'component/initloading_status.dart';
import 'component/product_list.dart';

/// 搜索结果页面
class SearchListIndex extends ConsumerWidget {
  final String value;

  const SearchListIndex({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        // value: value,
        // onSearch: (String value)=> ref.read(searchRiverpod).loadData(worlds: value),
      ),
      body: EasyRefresh.custom(
        slivers: const [
          SearchInitLoadingStatus(),
          SliverToBoxAdapter(
            child: SearchProductList(),
          )
        ],
        onLoad: ref.read(searchRiverpod).nextPage,
        footer: MaterialFooter(),
      ),
    );
  }
}
