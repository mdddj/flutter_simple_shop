// Flutter imports:
// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

// Project imports:
import '../../common/index.dart';
import '../../widgets/loading_widget.dart';
import 'components/detail_brand_info.dart';
import 'components/detail_product_list.dart';

// 产品品牌详情页面
class BrandDetailPage extends StatefulWidget {
  final String brandId;

  const BrandDetailPage({Key? key, required this.brandId}) : super(key: key);

  @override
  BrandDetailPageState createState() => BrandDetailPageState();
}

class BrandDetailPageState extends State<BrandDetailPage> with AfterLayoutMixin<BrandDetailPage>, LoadingMixin {
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
    final result = await kApi.getBrandDetail(param: BrandProductParam(brandId: widget.brandId, pageId: '$page', pageSize: '20'), requestParamsBuilder: (RequestParams requestParams) {
      return requestParams;
    });
    if (result != null) {
      products.addAll(result.list ?? []);
      _easyRefreshController.finishLoad(noMore: (result.list ?? []).length > 20);
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
        child: loadingState ? const LoadingWidget() : _buildBody(),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    setLoading(true);
    final result = await DdTaokeSdk.instance.getBrandDetail(param: BrandProductParam(brandId: widget.brandId, pageId: '1', pageSize: '20'), requestParamsBuilder: (RequestParams requestParams) {
      return requestParams;
    });
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    brandDetailModel = result;
    setLoading(false);
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
