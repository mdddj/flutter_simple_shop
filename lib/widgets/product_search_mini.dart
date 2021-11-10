// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/dd_taoke_sdk.dart';
import 'package:dd_taoke_sdk/model/product.dart';
import 'package:dd_taoke_sdk/params/super_search_param.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

// 搜索产品迷你版本
class ProductSearchMini extends StatefulWidget {
  // 搜索关键字
  final String keyWorlds;

  const ProductSearchMini({Key? key, required this.keyWorlds})
      : super(key: key);


  @override
  _ProductSearchMiniState createState() => _ProductSearchMiniState();
}

class _ProductSearchMiniState extends State<ProductSearchMini> {
  final List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final result = await DdTaokeSdk.instance.superSearch(
          param: SuperSearchParam(
              keyWords: widget.keyWorlds,
              pageSize: '50',
              type: '1',
              pageId: '1'));
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
    return ListView.builder(itemBuilder: itemBuilder,itemCount: _products.length,);
  }

  Widget itemBuilder(_,int index){
    final product = _products[index];
    return ListTile(
      leading: ExtendedImage.network(product.mainPic!),
      title: Text('${product.dtitle}'),
    );
  }
}
