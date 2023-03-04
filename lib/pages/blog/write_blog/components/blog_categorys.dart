import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../../../modals/blog_category_model.dart';
import '../../../../provider/riverpod/category_riverpod.dart';

class BlogCategorys extends StatelessWidget {
  final ValueChanged<BlogCategory>? onSelect;
  final BlogCategory? select; // 选中的

  const BlogCategorys({Key? key, this.onSelect, this.select}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer(builder: (context,ref,child){
      final blogCates = ref.watch(categoryRiverpod.select((value) => value.blogCategorys));
      if (blogCates.isEmpty) return Container();
      return WaterfallFlow.count(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: blogCates.map(renderItem).toList(),
      );
    },);

  }

  Widget renderItem(BlogCategory blogCategory) {
    return GestureDetector(
      onTap: () {
        onSelect?.call(blogCategory);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5), border: Border.all(color: select != null && select!.id == blogCategory.id ? Colors.blue : Colors.black)),
        child: Text(
          blogCategory.name,
          style: TextStyle(color: select != null && select!.id == blogCategory.id ? Colors.blue : Colors.black),
        ),
      ),
    );
  }
}
