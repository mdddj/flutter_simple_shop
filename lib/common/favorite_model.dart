///收藏产品的属性
abstract class FavoriteModel {
  String getAmount(); //优惠券金额
  String getArrivalPrice(); //到手价
  String getEndTime(); //优惠券结束时间
  String getImageUrl(); //产品主图
  String getProductId(); //产品ID
  String getTitle(); //标题
  String getType(); //产品类型,淘宝,平多多,京东

  ///获取接口参数
  Map<String, dynamic> getJson() => {
        "amount": getAmount(),
        "arrivalPrice": getArrivalPrice(),
        "endTime": getEndTime(),
        "imageUrl": getImageUrl(),
        "productId": getProductId(),
        "title": getTitle(),
        "type": getType()
      };
}
