import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../provider/riverpod/search_riverpod.dart';
import '../../widgets/appbar_search.dart';
import 'component/helper_show.dart';
import 'component/key_worlds.dart';
import 'component/suggest.dart';

/// 搜索页面
class SearchPage extends StatefulWidget {
  final String initSearchKeyWord; // 初始化搜索关键字

  const SearchPage({Key? key, this.initSearchKeyWord = ''}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBarSearch(
        value: widget.initSearchKeyWord,
        onSearch: (String value) {
          context.read<SearchState>().loadData(worlds: value);
        },
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
