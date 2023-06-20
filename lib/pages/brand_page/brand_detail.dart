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
  final EasyRefreshController _easyRefreshController = EasyRefreshController();
  List<ProductModel> products = <ProductModel>[];
  BrandDetail? brandDetailModel;
  int page = 1;

  Widget _buildBody() {
    return EasyRefresh.custom(
      slivers: [
        SliverToBoxAdapter(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: brandDetailModel == null
                ? Container()
                : BrandDetailView(brandDetailModel: brandDetailModel!),
          ),
        ),
        DetailProductList(
          list: products,
        )
      ],
      controller: _easyRefreshController,
      onLoad: load,
    );
  }

  // 下一页列表
  Future<void> load() async {
    _easyRefreshController.callLoad();
    page++;
    final result = await kApi.getBrandDetail(
        param: BrandProductParam(
            brandId: widget.brandId, pageId: '$page', pageSize: '20'),
        requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
        });
    if (result != null) {
      products.addAll(result.list ?? []);
      _easyRefreshController.finishLoad(
          noMore: (result.list ?? []).length > 20);
    }
    _setState();
    _easyRefreshController.finishLoad(success: true, noMore: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('品牌详情'),
        elevation: 0,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: _buildBody(),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    final result = await DdTaokeSdk.instance.getBrandDetail(
        param: BrandProductParam(
            brandId: widget.brandId, pageId: '1', pageSize: '20'),
        requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
        });
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    brandDetailModel = result;
  }

  void _setState() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _easyRefreshController.dispose();
  }
}
