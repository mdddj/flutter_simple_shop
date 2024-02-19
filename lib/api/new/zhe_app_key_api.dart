part of 'part.dart';

class MyNewApiByZhetaokeAppKey extends MyBaseApi<String> {
  MyNewApiByZhetaokeAppKey() : super('/api/zhe/app-key');

  @override
  String covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data']) case final String appKey
        when appKey.isNotEmpty) {
      return appKey;
    }
    throw const BaseApiException.businessException(
        message: '获取折淘客APP Key失败,请检查');
  }
}
