// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/loading_widget.dart';

class SearchInitLoadingStatus extends StatelessWidget{
  const SearchInitLoadingStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchState>(builder: (c,v,ch){
      final loading = v.initLoading;
      if(loading){
        return const SliverToBoxAdapter(
          child: LoadingWidget(),
        );
      }
      return SliverToBoxAdapter(child: Container(),);
    });
  }

}
