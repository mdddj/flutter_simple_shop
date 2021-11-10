// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/model/category.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubCategoryView extends ConsumerWidget {
  final ValueChanged<Subcategory>? changeSubcategory;
  final Category category;
  final Subcategory? subcategory;

  const SubCategoryView(this.category, {this.changeSubcategory, this.subcategory,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final showSubcategorys = category.subcategories ?? [];
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: buildGridView(showSubcategorys),
    );
  }

  GridView buildGridView(List<Subcategory> showSubcategorys) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: showSubcategorys.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return buildSubCategoryItem(showSubcategorys[index]);
      },
    );
  }

  // 子分类布局
  Widget buildSubCategoryItem(Subcategory item) {
    return InkWell(
      onTap: () {
        if (subcategory == null) {
          changeSubcategory?.call(item);
          return;
        }
        if (subcategory != null && subcategory!.subcid != item.subcid) {
          changeSubcategory?.call(item);
        }
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExtendedImage.network(
                  item.scpic!,
                  width: constraints.maxWidth * 0.5,
                  height: constraints.maxWidth * 0.5,
                  fit: BoxFit.fill,
                  cache: true,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                ),
                Text(
                  item.subcname!,
                  style: TextStyle(color: subcategory != null && subcategory!.subcid == item.subcid ? Colors.pinkAccent : Colors.black),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
