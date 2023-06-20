part of pages;

class ProductsList extends StatelessWidget {
  final List<ProductModel> products;

  const ProductsList(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return SliverToBoxAdapter(
        child: Container(),
      );
    }
    return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverWaterfallFlow.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: products.map(itemBuilder).toList()));
  }

  Widget itemBuilder(ProductModel item) {
    return utils.widgetUtils.renderProductCard(item);
  }
}
