part of '../index.dart';

// 产品品牌详情页面
class BrandDetailPage extends StatefulWidget {
  final String brandId;

  const BrandDetailPage({super.key, required this.brandId});

  @override
  BrandDetailPageState createState() => BrandDetailPageState();
}

class BrandDetailPageState extends State<BrandDetailPage>
    with AfterLayoutMixin<BrandDetailPage> {
  final products = <Product>[];
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
            slivers: [_detailWidget.toSliverWidget, _productList],
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
              Expanded(
                  child: CustomScrollView(
                slivers: [_productList],
              ))
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
  void afterFirstLayout(BuildContext context) async {}
}
