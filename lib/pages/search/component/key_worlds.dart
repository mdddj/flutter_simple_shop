part of '../../index.dart';

/// 搜索关键字组件
class SearchKeyWorlds extends ConsumerStatefulWidget {
  const SearchKeyWorlds({super.key});

  @override
  SearchKeyWorldsState createState() => SearchKeyWorldsState();
}

class SearchKeyWorldsState extends ConsumerState<SearchKeyWorlds> {
  List<String> _keyWorlds = List.generate(10, (index) => '        ');

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '搜索发现',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            Wrap(
              spacing: 5,
              runSpacing: 2,
              children: _keyWorlds.map(_item).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String item) {
    return InkWell(
      onTap: () {
        if (item.trim().isEmpty) {
          return;
        }
        context.navToWidget(to: SearchListIndex(value: item));
      },
      child: Chip(
        label: Text(item),
      ),
    );
  }

  @override
  void initState() {
    Future.microtask(() async {
      final result = await MySearchKeyWordApi()
          .request(const RequestParams(showDefaultLoading: false));
      if (mounted) {
        _keyWorlds.clear();
        setState(() {
          _keyWorlds = result.sublist(0, 10);
        });
      }
    });
    super.initState();
  }
}
