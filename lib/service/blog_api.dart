// Project imports:
import '../common/utils.dart';
import '../modals/blog_category_model.dart';

/// 博客api
class BlogApi {
  /// 发布一篇新博客
  Future<void> pishNewBlog(String title, String content, List<String> tags, String categoryId, {String? alias}) async {
    await utils.api.post('/api/blog/push-new', {'title': title, 'content': content, 'tags': tags, 'categoryId': categoryId});
  }

  /// 获取分类列表
  Future<List<BlogCategory>> getCategorys() async {
    var list = <BlogCategory>[];
    await utils.api.get('/api/blog/category-list', otherDataHandle: (data) {
      list = BlogCategory.fromList(data);
    });
    return list;
  }
}
