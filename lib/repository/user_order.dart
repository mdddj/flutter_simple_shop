part of 'index.dart';

///用户订单的数据仓库
class UserOrderRepository extends SimpleLoadingMoreBaes<UserOrderInfo, MyUserOrderListApi> {
  final String status;

  UserOrderRepository(this.status);

  @override
  MyUserOrderListApi get api => MyUserOrderListApi();

  @override
  List<UserOrderInfo> transformResponseData(WrapJson data) {
    return List.from(data.getListValue('content').map(UserOrderInfo.fromJson));
  }

  @override
  Map<String, dynamic> get otherParams => status.isNotEmpty ? {"status": status} : {};

  @override
  bool transformIsNomore(WrapJson data) {
    return data.getValue('last') as bool;
  }
}
