part of newapi;

class MyNewApiByZhetaokeAppKey extends MyBaseApi<String> {
  MyNewApiByZhetaokeAppKey() : super('/api/zhe/app-key');

  @override
  String covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data']) case final String appKey
        when appKey.isNotEmpty) {
      return appKey;
    }
    throw const BaseApiException.businessException(
        message: '或者折淘客APPkey失败,请配置');
  }
}
