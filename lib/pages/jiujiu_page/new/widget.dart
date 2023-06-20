import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../../constant/index.dart';
import '../../../widgets/index.dart';
import '../../../widgets/loading/custom_loading_more_widget.dart';
import 'repository.dart';
import 'types.dart';

class JiuJiuIndex extends StatefulWidget {
  const JiuJiuIndex({Key? key}) : super(key: key);

  @override
  State<JiuJiuIndex> createState() => _JiuJiuIndexState();
}

class _JiuJiuIndexState extends State<JiuJiuIndex>
    with SingleTickerProviderStateMixin {
  late final _tabController =
      TabController(length: ninenineTypes.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('9块9包邮'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: TabBar(
                isScrollable: context.tabIsScrollable,
                tabs: ninenineTypes
                    .map((element) => Tab(
                          text: element.title,
                        ))
                    .toList(),
                controller: _tabController)),
      ),
      body: TabBarView(
        controller: _tabController,
        children: ninenineTypes
            .map((element) => _Item(repository: JiujiuRepository(element)))
            .toList(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final JiujiuRepository repository;

  const _Item({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingMoreCustomScrollView(
      slivers: [
        LoadingMoreSliverList(SliverListConfig<ProductModel>(
            itemBuilder: (ctx, item, index) {
              return WaterfallGoodsCard(item);
            },
            sourceList: repository,
            padding: const EdgeInsets.all(8),
            indicatorBuilder: (context, status) {
              return CustomLoadingMoreWidgetWithSliver(
                context,
                status,
                retry: () {
                  repository.refresh(true);
                },
              );
            },
            extendedListDelegate:
                SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.waterfallFlowCrossAxisCount,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8)))
      ],
    );
  }
}
