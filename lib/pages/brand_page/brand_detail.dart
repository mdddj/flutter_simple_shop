part of pages;

// 产品品牌详情页面
class BrandDetailPage extends StatefulWidget {
  final String brandId;

  const BrandDetailPage({Key? key, required this.brandId}) : super(key: key);

  @override
  BrandDetailPageState createState() => BrandDetailPageState();
}

class BrandDetailPageState extends State<BrandDetailPage>
    with AfterLayoutMixin<BrandDetailPage> {
  List<ProductModel> products = <ProductModel>[];
  BrandDetail? brandDetailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('品牌详情'),
        elevation: 0,
      ),
      body: ScreenTypeLayout.builder(
        mobile: (p0) {
          return CustomScrollView(
            slivers: [
              _detailWidget.toSliverWidget,
              _productList
            ],
          );
        },
        desktop: (p0) {
          return Row(
            children: [
              SizedBox(
                width: context.screenWidth * 0.2,
                height: context.kBodyHeight,
                child: _detailWidget,
              ),
              Expanded(child: CustomScrollView(slivers: [
                _productList
              ],))
            ],
          );
        },
      ),
    );
  }



  Widget get _detailWidget =>
      BrandDetailView(brandDetailModel: brandDetailModel);
  Widget get _productList => DetailProductList(
        list: products,
      );

  @override
  void afterFirstLayout(BuildContext context) async {
    final result = await DdTaokeSdk.instance.getBrandDetail(
        param: BrandProductParam(
            brandId: widget.brandId, pageId: '1', pageSize: '100'),
        requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
        });
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    wtfLog("是否加载到品牌的数据:$result");
    brandDetailModel = result;
    setState(() {});
  }
}
