// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/loading_widget.dart';

// Project imports:
import 'pyq_riverpod.dart';

class PyQLoading extends ConsumerWidget {
  const PyQLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final loading = ref.watch(pyqRiverpod.select((value) => value.loading));
    Widget container = Container();
    if (loading) {
      container = const LoadingWidget();
    }
    return SliverToBoxAdapter(
      child: container,
    );
  }
}
