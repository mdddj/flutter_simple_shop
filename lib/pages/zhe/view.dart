// Flutter imports:
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/index.dart';
import '../index.dart';
import 'riverpod.dart';

class ZheIndex extends ConsumerStatefulWidget {
  const ZheIndex({super.key});

  @override
  ZheIndexState createState() => ZheIndexState();
}

class ZheIndexState extends ConsumerState<ZheIndex> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      ref.read(zheRiverpod).onTabChange(0);
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
          onTap: (index) => ref.read(zheRiverpod).onTabChange(index),
          insets: const [
            Tab(
              text: '推荐',
            )
          ],
        ),
        bottomHeight: 48,
      ),
      body: MyLoadingMoreCustomScrollView(
        controller: scrollController,
        slivers: [
          if (loading)
            const SliverToBoxAdapter(
              child: LoadingWidget(),
            ),
          ProductsList(products)
        ],
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
