part of '../index.dart';

/// 搜索页面
class SearchPage extends ConsumerStatefulWidget {
  final String initSearchKeyWord; // 初始化搜索关键字

  const SearchPage({super.key, this.initSearchKeyWord = ''});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSearchTextField(
          onSubmitted: (keyword) {
            context.navToWidget(to: SearchListIndex(value: keyword));
          },
          placeholder: '输入关键字',
        ),
      ),
      body: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(12), child: HelperComp()),
        ),
        SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(12), child: SearchKeyWorlds()),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Suggest(),
          ),
        )
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
