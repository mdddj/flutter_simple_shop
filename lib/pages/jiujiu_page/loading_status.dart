// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/loading_widget.dart';
// Project imports:
import 'riverpod.dart';

class JiuJiuLoadingStatus extends ConsumerWidget{
  const JiuJiuLoadingStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final loading = watch(jiujiuRiverpod).loading;
    if(loading){
      return const SliverToBoxAdapter(
        child: LoadingWidget(),
      );
    }
    return SliverToBoxAdapter(child: Container(),);
  }

}
