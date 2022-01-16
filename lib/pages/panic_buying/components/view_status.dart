// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import '../../../widgets/loading_widget.dart';
import '../repository.dart';

/// 页面状态显示
class ViewStatusWithPanicBuy extends StatelessWidget {
  const ViewStatusWithPanicBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PanicBuyingModel>(builder: (c,v,ch){
      final changeLoading = v.changeLoading;
      if (changeLoading) {
        return const LoadingWidget();
      }
      return Container();
    });
  }
}
