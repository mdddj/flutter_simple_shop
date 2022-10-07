// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/product.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import './goods_item_widget.dart';

class GoodsListWidget extends StatelessWidget {

  final List<Product>? list;
  final bool? isInitLoading;
  const GoodsListWidget({required this.list,this.isInitLoading,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return isInitLoading!? SizedBox(
      height:250,
      width: context.screenWidth,
      child: Center(
        child: Image.asset('assets/images/loading.gif'),
      ),
    ) : ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list!.length,
      itemBuilder: (context,index){
        return GoodsItemWidget(goodsItem: list![index]);
      },
    );
  }
}
