// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/loading_widget.dart';
// Project imports:
import 'pyq_riverpod.dart';

class PyQLoading extends ConsumerWidget{
  const PyQLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final loading = watch(pyqRiverpod).loading;
    Widget contaner = Container();
    if(loading){
      contaner = const LoadingWidget();
    }
    return SliverToBoxAdapter(
      child: contaner,
    );
  }

}
