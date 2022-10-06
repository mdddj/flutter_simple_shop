import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryGoodsList extends ConsumerStatefulWidget {
  final Category category;
  const CategoryGoodsList(this.category,{Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CategoryGoodsListState();
  }
}

class _CategoryGoodsListState extends ConsumerState<CategoryGoodsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('分类页面'),
    );
  }
}