// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../../widgets/loading_widget.dart';
import '../repository.dart';

/// 页面状态显示
class ViewStatusWithPanicBuy extends ConsumerWidget {
  const ViewStatusWithPanicBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final changeLoading = watch(panicBuyingRiverpod).changeLoading;
    if (changeLoading) {
      return const LoadingWidget();
    }
    return Container();
  }
}
