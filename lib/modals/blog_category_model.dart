
import 'package:freezed_annotation/freezed_annotation.dart';
part 'blog_category_model.freezed.dart';
part 'blog_category_model.g.dart';
@freezed
class BlogCategory with _$BlogCategory {
  const BlogCategory._();

  const factory BlogCategory({
    required int id,
    required String name,
    required String logo,
    required String intro,
    required int createTime,
  }) = _BlogCategory;

  factory BlogCategory.fromJson(Map<String, dynamic> json) => _$BlogCategoryFromJson(json);

}

///