part of 'part.dart';

class MyNewApiByHotSearch extends MyBaseApi<List<HotSearchWorlds>> {
  MyNewApiByHotSearch() : super('/tkapi/api/v1/dtk/apis/hot-search-worlds');

  @override
  List<HotSearchWorlds> covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (v) => v['data']) case final List<dynamic> list
        when list.isNotEmpty) {
      return List<HotSearchWorlds>.from(list.map(HotSearchWorlds.fromJson));
    }
    return [];
  }
}
