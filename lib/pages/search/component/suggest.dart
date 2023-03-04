import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../common/widgets/hot.dart';
import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/extended_image.dart';
import '../list.dart';


final _riverpodSuggest = FutureProvider.autoDispose((ref) async {
  return await DdTaokeSdk.instance.getHotSearchWorlds();
});

///热搜榜
class Suggest extends ConsumerWidget {
  const Suggest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '热搜榜',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            ref.watch(_riverpodSuggest).when(data: (list){
              return Wrap(
                children: list.map((e)=>_renderItem(e,context,ref)).toList(),
              );
            }, error: (e,s)=>const Text("加载热搜榜失败"), loading: ()=>const CupertinoActivityIndicator())
          ],
        ),
      ),
    );
  }

  Widget _renderItem(HotSearchWorlds item,BuildContext context,WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(searchRiverpod).loadData(worlds: item.words);
        context.navToWidget(to: SearchListIndex(value: item.words ?? ''));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Text('${item.rankNum!}'),
            SizedBox(
              width: 30,
              height: 58,
              child: Container(
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              width: 58,
              height: 58,
              child: SimpleImage(url: item.pic!),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Container(
              constraints: const BoxConstraints(minHeight: 58),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.theme!),
                      if (item.label!.isNotEmpty)
                        Badge(
                          child: Text(
                            item.label!,
                            style: TextStyle(
                                color: context.primaryColor),
                          )
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Hot(text: ' ${item.hotValue}  热度')
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
