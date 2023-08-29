part of pages;

///订单状态
enum UserOrderStatus {
  all("全部",""),payment("已付款","Payment"),settlement("已结算","Settlement"),success("成功","Success"),expiration("已失效","Expiration");
  const UserOrderStatus(this.title,this.requestParam);
  final String title;
  final String requestParam;
}