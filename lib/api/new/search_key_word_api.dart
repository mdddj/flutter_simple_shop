part of 'part.dart';

class MySearchKeyWordApi extends MyBaseApi<List<String>> {
  MySearchKeyWordApi()
      : super("/tkapi/api/v1/dtk/apis/search-worlds",
            httpMethod: HttpMethod.get);

  @override
  List<String> covertToModel(DartTypeModel data, RequestParams param) {
    return data.whenOrNull(
          json: (value) {
            if (value['data']['hotWords'] case final List<dynamic> list) {
              return list.asStringList;
            }
            return null;
          },
        ) ??
        [];
  }
}
