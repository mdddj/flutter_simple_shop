part of '../../index.dart';

final _riverpodSuggest = FutureProvider((ref) => MyNewApiByHotSearch()
    .request(const RequestParams(showDefaultLoading: false)));

///热搜榜
class Suggest extends ConsumerWidget {
  const Suggest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '热搜榜',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            ref.watch(_riverpodSuggest).when(
                data: (list) {
                  if (list.isEmpty) {
                    return const Text('暂无数据');
                  }
                  return Wrap(
                    children:
                        list.map((e) => _renderItem(e, context, ref)).toList(),
                  );
                },
                error: (e, s) => RiverpodErrorWidget(
                      message: '加载热搜榜单失败',
                      retry: () {
                        ref.invalidate(_riverpodSuggest);
                      },
                    ),
                loading: () => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MyLoading(),
                    ).center,
                skipLoadingOnRefresh: false)
          ],
        ),
      ),
    );
  }

  Widget _renderItem(
      HotSearchWorlds item, BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.navToWidget(to: SearchListIndex(value: item.words ?? ''));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              height: 58,
              child: Container(
                alignment: Alignment.center,
                child: Text('${item.rankNum!}'),
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
                          style: TextStyle(color: context.primaryColor),
                        )),
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
