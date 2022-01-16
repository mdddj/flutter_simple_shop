// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:provider/provider.dart';

import '../../widgets/loading_widget.dart';
// Project imports:
import 'riverpod.dart';

class JiuJiuLoadingStatus extends StatelessWidget{
  const JiuJiuLoadingStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Consumer<JiujiuState>(builder: (c,v,ch){
     final loading = v.loading;
     if(loading){
       return const SliverToBoxAdapter(
         child: LoadingWidget(),
       );
     }
     return SliverToBoxAdapter(child: Container(),);
   });
  }

}
