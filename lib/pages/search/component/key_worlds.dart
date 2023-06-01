import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../list.dart';

/// 搜索关键字组件
class SearchKeyWorlds extends ConsumerStatefulWidget {
  const SearchKeyWorlds({Key? key}) : super(key: key);

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
      final result = await DdTaokeSdk.instance.getSuggest(requestParamsBuilder: (RequestParams requestParams) {
        return requestParams.copyWith(showDefaultLoading: false);
      });
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
