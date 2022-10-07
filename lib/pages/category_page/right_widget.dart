import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/riverpod/category_riverpod.dart';
import '../../widgets/extended_image.dart';
import '../new_goods_list/view.dart';

class RightWidgetItme extends StatelessWidget {
  final Subcategory item;
  final Category category;

  const RightWidgetItme({required this.item, required this.category,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.navToWidget(to: NewGoodsList(
          category: category,
          subcategory: item,
          initIndex: context.read<CategoryState>().getIndexWithCategory(category),
        ));
      },
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ExtendedImageWidget(
              src: item.scpic!,
              width: 50,
              height: 50,
            ),
            Text(item.subcname!)
          ],
        ),
      ),
    );
  }
}
