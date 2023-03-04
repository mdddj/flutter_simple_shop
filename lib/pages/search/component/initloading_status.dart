// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/loading_widget.dart';

class SearchInitLoadingStatus extends ConsumerWidget{
  const SearchInitLoadingStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final loading = ref.watch(searchRiverpod.select((value) => value.initLoading));
    if(loading){
      return const SliverToBoxAdapter(
        child: LoadingWidget(),
      );
    }
    return const SliverToBoxAdapter(child: SizedBox());
  }

}
