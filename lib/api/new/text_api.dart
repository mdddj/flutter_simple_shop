part of '../../index.dart';

///字典列表api
///
class MyTextModeListApi extends MyBaseApi<List<TextModel>> {
  MyTextModeListApi()
    : super("/api/blog/getTextAll", httpMethod: HttpMethod.get);

  @override
  List<TextModel> covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data'])
        case final List<dynamic> data) {
      return List.from(data.map(TextModel.fromJson));
    }
    return [];
  }
}
