import 'package:badges/badges.dart';
import 'package:dataoke_sdk/model/hot_search_worlds_result.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/widgets/hot.dart';
import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/extended_image.dart';
import '../list.dart';

class Suggest extends StatelessWidget {
  const Suggest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(color: Colors.white),
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
         Wrap(
    children: [].map((e)=>_renderItem(e,context)).toList(),
    ),
        ],
      ),
    );
  }

  Widget _renderItem(HotSearchWorlds item,BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SearchState>().loadData(worlds: item.words);
        context.navToWidget(to: SearchListIndex(value: item.words ?? ''));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: const BoxDecoration(color: Colors.white),
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
                      Text(
                        item.theme!,
                        style: const TextStyle(color: Colors.black),
                      ),
                      if (item.label!.isNotEmpty)
                        Badge(
                          badgeContent: Text(
                            item.label!,
                            style: const TextStyle(
                                color: Colors.pink,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          badgeColor: Colors.white,
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
