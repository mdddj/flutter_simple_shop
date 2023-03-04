import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../panic_buying/components/list.dart';
import '../index_riverpod.dart';

class IndexProductss extends ConsumerWidget{
  const IndexProductss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final list = ref.watch(indexStateRiverpod.select((value) => value.products));
    if(list.isEmpty) return const SliverToBoxAdapter();
    return ProductsList(list);
  }

}
