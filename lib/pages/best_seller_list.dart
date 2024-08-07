part of 'index.dart';

/// 畅销榜单页面
class BestSellerListPage extends ConsumerStatefulWidget {
  const BestSellerListPage({super.key});

  static void nav(BuildContext context) =>
      context.navToWidget(to: const BestSellerListPage());

  @override
  BestSellerListPageState createState() => BestSellerListPageState();
}

class BestSellerListPageState extends ConsumerState<BestSellerListPage> {
  late final List<Product> _products =
      ref.read(indexStateRiverpod).hotDayProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '畅销榜单'),
      body: MyLoadingMoreCustomScrollView(slivers: [
        SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverWaterfallFlow.count(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: _products.map(_renderItemCell).toList(),
            ))
      ]),
    );
  }

  Widget _renderItemCell(Product product) {
    return utils.widgetUtils.renderProductCard(product);
  }
}
