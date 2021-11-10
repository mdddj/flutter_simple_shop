// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../modals/blog_category_model.dart';
import '../../../provider/riverpod/category_riverpod.dart';

class WriteBlogLogic extends GetxController {
  Rxn<BlogCategory> select = Rxn<BlogCategory>(null);
  RxList<String> tags = RxList<String>([]);
  RxString title = RxString('');
  RxString content = RxString('');
  RxBool submitLoading = RxBool(false);

  /// 获取博客的分类
  Future<void> getBlogCategorys(BuildContext context) async {
    await context.read(categoryRiverpod).getBlogCategory();
  }

  // 标题被改变
  void titleChange(String val) {
    title.value = val;
    update();
  }

  // 正文内容被改变
  void contentChange(String val) {
    content.value = val;
    update();
  }

  // 选中
  void onSelect(BlogCategory blogCategory) {
    select.value = blogCategory;
    update();
  }

  // 添加标签
  void addTag(String val) {
    tags.add(val);
    update();
  }

  // 删除标签
  void removeTag(String val) {
    tags.remove(val);
    update();
  }

  // 发布
  Future<void> submit() async {
    if (select.value == null) {
      utils.showMessage('请选择分类');
      return;
    }
    if (title.value.isEmpty) {
      utils.showMessage('请输入标题');
      return;
    }
    if (content.value.isEmpty) {
      utils.showMessage('请输入正文内容');
      return;
    }
    if (tags.isEmpty) {
      utils.showMessage('请输入标签');
      return;
    }
    submitLoading.value = true;
    update();
    await utils.blogApi.pishNewBlog(title.value, content.value, tags, '${select.value!.id}');
    submitLoading.value = false;
    update();
  }
}
