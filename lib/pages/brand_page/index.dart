// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/category.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/index.dart';
import '../../provider/riverpod/category_riverpod.dart';
import 'new/list.dart';

/// 品牌列表页面
class BrandListPage extends ConsumerStatefulWidget {
  const BrandListPage({Key? key}) : super(key: key);

  @override
  BrandListPageState createState() => BrandListPageState();
}

class BrandListPageState extends ConsumerState<BrandListPage> with LoadingMixin,SingleTickerProviderStateMixin {
  IList<Category> get watchCategory => ref.watch(categoryRiverpod.select((value) => value.categorys));
 late  final _tabController = TabController(length: watchCategory.length, vsync: this);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('典の常买品牌'),
        bottom: PreferredSize(preferredSize: const Size.fromHeight(32), child: TabBar(tabs: watchCategory.map((element) {
          return Tab(text: element.cname,);
        }).toList(),controller: _tabController,isScrollable: true)),
      ),
      body: TabBarView(
        controller: _tabController,
        children:watchCategory.map((element) {
          return BrandListWidget(cid: element.cid.toString());
        }).toList(),
      ),
    );
  }


}
