part of api;

class MyUserOrderListApi extends MyAppCoreApi with ApiPageMixin {
  MyUserOrderListApi() : super('/api/app/order/list');
}
