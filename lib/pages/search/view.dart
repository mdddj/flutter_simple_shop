import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/riverpod/search_riverpod.dart';
import 'component/helper_show.dart';
import 'component/key_worlds.dart';
import 'component/suggest.dart';

/// 搜索页面
class SearchPage extends ConsumerStatefulWidget {
  final String initSearchKeyWord; // 初始化搜索关键字

  const SearchPage({Key? key, this.initSearchKeyWord = ''}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSearchTextField(
          onSubmitted: (keyword){
            ref.read(searchRiverpod).loadData(worlds: keyword);
          },
          placeholder: '输入关键字',
        ),
      ),
      body: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: HelperComp(),
        ),
        SliverToBoxAdapter(
          child: SearchKeyWorlds(),
        ),
        SliverToBoxAdapter(
          child: Suggest(),
        )
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
