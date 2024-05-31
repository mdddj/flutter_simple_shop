part of "part.dart";

///超级搜索接口
class SuperSearchApi extends MyBaseApi<List<Product>> {
  SuperSearchApi() : super("/tkapi/api/v1/dtk/apis/super-search");

  @override
  List<Product> covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data']['list']) case final List<dynamic> datas) {
      return List.from(datas.map(Product.fromJson));
    }
    return [];
  }
}
