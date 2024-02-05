part of 'part.dart';

class MyNewApiDetailInfo extends MyBaseApi<DetailBaseDataResult> {
  MyNewApiDetailInfo() : super('/tkapi/api/v1/dtk/apis/product-detail-all/');

  @override
  DetailBaseDataResult covertToModel(DartTypeModel data, RequestParams param) {
    if (data.whenOrNull(json: (value) => value['data'])
        case final Map<String, dynamic> map) {
      return DetailBaseDataResult.fromJson(map);
    }
    throw const BaseApiException.businessException(message: '获取产品失败');
  }
}
