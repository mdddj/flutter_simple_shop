// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../widgets/loading_widget.dart';
import '../../widgets/simple_appbar.dart';
import '../panic_buying/components/categorys.dart';
import '../panic_buying/components/list.dart';
import 'riverpod.dart';

class ZheIndex extends StatefulWidget {
  const ZheIndex({Key? key}) : super(key: key);

  @override
  _ZheIndexState createState() => _ZheIndexState();
}

class _ZheIndexState extends State<ZheIndex> {
  final EasyRefreshController easyRefreshController = EasyRefreshController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      context.read(zheRiverpod).onTabChange(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: '折上折 - 拍两件更优惠',
        bottom: BottomCategoryTabs(
          onTap: context.read(zheRiverpod).onTabChange,
          insets: const [
            Tab(
              text: '推荐',
            )
          ],
        ),
        bottomHeight: 48,
      ),
      body: Consumer(
        builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
          final products = watch(zheRiverpod).products;
          final loading = watch(zheRiverpod).loading;
          return EasyRefresh.custom(
            controller: easyRefreshController,
            scrollController: scrollController,
            slivers: [
              if (loading)
                const SliverToBoxAdapter(
                  child: LoadingWidget(),
                ),
              ProductsList(products)
            ],
            onLoad: () async {
              final hasNextPage = await context.read(zheRiverpod).nextPage();
              if (scrollController.hasClients) {
                easyRefreshController.finishLoad(noMore: hasNextPage);
              }
            },
            footer: MaterialFooter(),
            header: MaterialHeader(),
            onRefresh: ()async {
              await context.read(zheRiverpod).refresh();
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    easyRefreshController.dispose();
    super.dispose();
  }
}
