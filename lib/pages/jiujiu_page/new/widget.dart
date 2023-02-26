import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';
import '../../../widgets/waterfall_goods_card.dart';
import 'repository.dart';
import 'types.dart';

class JiuJiuIndex extends StatefulWidget {
  const JiuJiuIndex({Key? key}) : super(key: key);

  @override
  State<JiuJiuIndex> createState() => _JiuJiuIndexState();
}

class _JiuJiuIndexState extends State<JiuJiuIndex> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: ninenineTypes.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('9块9包邮'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: TabBar(
                tabs: ninenineTypes
                    .map((element) => Tab(
                          text: element.title,
                        ))
                    .toList(),
                controller: _tabController)),
      ),
      body: TabBarView(
        controller: _tabController,
        children: ninenineTypes.map((element) => _Item(repository: JiujiuRepository(element))).toList(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final JiujiuRepository repository;

  const _Item({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingMoreList(ListConfig<ProductModel>(
        itemBuilder: (ctx, item, index) {
          return WaterfallGoodsCard(item);
        },
        sourceList: repository,
        padding: const EdgeInsets.all(8),
        extendedListDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8)));
  }
}
