part of 'part.dart';

class MyNewApiByProducts extends MyBaseApi<List<Product>> {
  MyNewApiByProducts() : super('/tkapi/api/v1/dtk/apis/goods');

  @override
  List<Product> covertToModel(DartTypeModel data, RequestParams param) {
    if ((data.whenOrNull(json: (value) => value['data']['list']))
        case final List<dynamic> list when list.isNotEmpty) {
      return List<Product>.from(list.map(Product.fromJson));
    }
    return [];
  }
}

class MyNewApiByNineNine extends MyBaseApi<List<Product>> {
  MyNewApiByNineNine() : super('/tkapi/api/v1/dtk/apis/nine-nine-goods');

  @override
  List<Product> covertToModel(DartTypeModel data, RequestParams param) {
    if ((data.whenOrNull(json: (value) => value['data']['list']))
        case final List<dynamic> list when list.isNotEmpty) {
      return List<Product>.from(list.map(Product.fromJson));
    }
    return [];
  }
}
