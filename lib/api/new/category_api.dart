part of newapi;

class MyNewApiByCategoryApi extends MyBaseApi<List<Category>> {
  MyNewApiByCategoryApi() : super('/tkapi/api/v1/dtk/apis/categorys');

  @override
  List<Category> covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (v) => v['data']) case final List<dynamic> list
        when list.isNotEmpty) {
      return List<Category>.from(list.map(Category.fromJson));
    }
    return [];
  }
}
