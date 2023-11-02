part of '../index.dart';

// 每日半价页面
class BanjiaIndex extends ConsumerStatefulWidget {
  const BanjiaIndex({super.key});

  @override
  BanjiaIndexState createState() => BanjiaIndexState();
}

class BanjiaIndexState extends ConsumerState<BanjiaIndex> {
  final ScrollController scrollController = ScrollController();

  bool showTopButton = false;

  @override
  void initState() {
    Future.microtask(() {
      ref.read(banjiaRiveroid).init();
    });
    scrollController.addListener(() {
      if (scrollController.offset >= 200) {
        if (!showTopButton) {
          setState(() {
            showTopButton = true;
          });
        }
      } else {
        if (showTopButton) {
          setState(() {
            showTopButton = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(banjiaRiveroid.select((value) => value.products));
    final loading = ref.watch(banjiaRiveroid.select((value) => value.loading));
    return Scaffold(
      appBar: const SimpleAppBar(
        title: '每日半价',
        titleColor: Colors.white,
      ),
      body: MyLoadingMoreCustomScrollView(controller: scrollController, slivers: [
        SliverPersistentHeader(
          delegate: FloatWidget(child: const BanjiaSessions(), height: 48),
          pinned: true,
        ),
        Builder(builder: (_) {
          if (loading) return const SliverToBoxAdapter(child: LoadingWidget());
          return BanjiaList(products: list);
        })
      ]),
      floatingActionButton: showTopButton
          ? FloatingActionButton(
              onPressed: () {
                scrollController.jumpTo(0);
              },
              backgroundColor: Colors.pink,
              child: const Icon(Icons.vertical_align_top),
            )
          : null,
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
}
