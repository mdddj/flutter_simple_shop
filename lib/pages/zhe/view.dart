// Flutter imports:
import 'package:flutter/material.dart';

import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/simple_appbar.dart';
import '../index.dart';
import 'riverpod.dart';

class ZheIndex extends ConsumerStatefulWidget {
  const ZheIndex({Key? key}) : super(key: key);

  @override
  ZheIndexState createState() => ZheIndexState();
}

class ZheIndexState extends ConsumerState<ZheIndex> {
  final EasyRefreshController easyRefreshController = EasyRefreshController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      ref.read(zheRiverpod).onTabChange(0, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(zheRiverpod.select((value) => value.products));
    final loading = ref.watch(zheRiverpod.select((value) => value.loading));
    return Scaffold(
      appBar: SimpleAppBar(
        title: '折上折 - 拍两件更优惠',
        bottom: BottomCategoryTabs(
          onTap: (index) => ref.read(zheRiverpod).onTabChange(index, context),
          insets: const [
            Tab(
              text: '推荐',
            )
          ],
        ),
        bottomHeight: 48,
      ),
      body: EasyRefresh.custom(
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
          final hasNextPage = await ref.read(zheRiverpod).nextPage();
          if (scrollController.hasClients) {
            easyRefreshController.finishLoad(noMore: hasNextPage);
          }
        },
        footer: MaterialFooter(),
        header: MaterialHeader(),
        onRefresh: () async {
          await ref.read(zheRiverpod).refresh();
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
