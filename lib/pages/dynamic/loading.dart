// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/loading_widget.dart';

// Project imports:
import 'pyq_riverpod.dart';

class PyQLoading extends StatelessWidget {
  const PyQLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PyqState>(builder: (c, v, ch) {
      final loading = v.loading;
      Widget container = Container();
      if (loading) {
        container = const LoadingWidget();
      }
      return SliverToBoxAdapter(
        child: container,
      );
    });
  }
}
