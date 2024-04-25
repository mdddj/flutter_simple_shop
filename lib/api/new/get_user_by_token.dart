part of 'part.dart';

class GetUserByTokenApi extends MyBaseApi<MyUser> {
  GetUserByTokenApi() : super('/api/get-user-by-token');

  @override
  MyUser covertToModel(DartTypeModel data, RequestParams param) {
    final map = data.tryGetMap;
    if (map != null) {
      return MyUser.fromJson(map);
    }
    throw const BaseApiException.businessException(message: '获取用户信息失败');
  }
}
