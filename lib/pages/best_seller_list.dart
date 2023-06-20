part of pages;

/// 畅销榜单页面
class BestSellerListPage extends ConsumerStatefulWidget {
  const BestSellerListPage({Key? key}) : super(key: key);

  static void nav(BuildContext context) =>
      context.navToWidget(to: const BestSellerListPage());

  @override
  BestSellerListPageState createState() => BestSellerListPageState();
}

class BestSellerListPageState extends ConsumerState<BestSellerListPage> {
  late final List<ProductModel> _products =
      ref.read(indexStateRiverpod).hotDayProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '畅销榜单'),
      body: EasyRefresh.custom(slivers: [
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

  Widget _renderItemCell(ProductModel product) {
    return utils.widgetUtils.renderProductCard(product);
  }
}
