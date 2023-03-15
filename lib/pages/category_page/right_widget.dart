import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/extended_image.dart';
import '../new_goods_list/v2/index.dart';
import '../new_goods_list/v2/page.dart';

class RightWidgetItme extends ConsumerWidget {
  final Subcategory item;
  final Category category;

  const RightWidgetItme({required this.item, required this.category,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.navToWidget(to: CategoryListPage(category: category));
      },
      child: Column(
        children: <Widget>[
          ExtendedImageWidget(
            src: item.scpic,
            width: 50,
            height: 50,
            radius: BorderRadius.circular(50),
          ),
          const SizedBox(height: 5),
          Text(item.subcname)
        ],
      ),
    );
  }
}
