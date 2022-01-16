// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:provider/provider.dart';

import '../../../panic_buying/components/list.dart';
// Project imports:
import '../index_riverpod.dart';

class IndexProductss extends StatelessWidget{
  const IndexProductss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (c,v,ch){
      final list = v.products;
      if(list.isEmpty) return const SliverToBoxAdapter();
      return ProductsList(list);
    });
  }

}
