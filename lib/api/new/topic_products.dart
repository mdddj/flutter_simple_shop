part of 'part.dart';

//主题商品
class NewApiByTopicProducts extends MyBaseApi<List<Product>> {
  NewApiByTopicProducts() : super('/tkapi/api/v1/dtk/apis/topic-goods');

  @override
  List<Product> covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (v) => v['data']) case final List<dynamic> list
        when list.isNotEmpty) {
      return List<Product>.from(list.map(Product.fromJson));
    }
    return [];
  }
}
