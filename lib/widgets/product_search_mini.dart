part of widgets;

// 搜索产品迷你版本
class ProductSearchMini extends StatefulWidget {
  // 搜索关键字
  final String keyWorlds;

  const ProductSearchMini({Key? key, required this.keyWorlds})
      : super(key: key);

  @override
  ProductSearchMiniState createState() => ProductSearchMiniState();
}

class ProductSearchMiniState extends State<ProductSearchMini> {
  final List<ProductModel> _products = [];

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final result = await DdTaokeSdk.instance.superSearch(
          param: SuperSearchParam(
              keyWords: widget.keyWorlds,
              pageSize: '50',
              type: '1',
              pageId: '1'),
          requestParamsBuilder: (RequestParams requestParams) {
            return requestParams;
          });
      if (result != null) {
        if (mounted) {
          setState(() {
            _products.addAll(result.list ?? []);
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: _products.length,
    );
  }

  Widget itemBuilder(_, int index) {
    final product = _products[index];
    return ListTile(
      leading: ExtendedImage.network(product.mainPic),
      title: Text(product.dtitle),
    );
  }
}
