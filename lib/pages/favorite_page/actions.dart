
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///操作小部件
class FavoritesActionWidget extends ConsumerWidget {
  const FavoritesActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Row(
        children: <Widget>[
          // 全选/取消全选
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Checkbox(
                value:true,
                onChanged: (v) {
                },
              ),
              Text('全选')
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          // 操作
          Expanded(
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: <Widget>[

              ],
            ),
          )
        ],
      ),
    );
  }

}