import '../pages/index_page/model/index_carousel_item_model.dart';

const appConfig = {
  'huafeiUrl': 'https://mobile.yangkeduo.com/duo_transfer_channel.html?resourceType=39997&pid=16206457_213612380&cpsSign=CE_210717_16206457_213612380_436d52c9a6ed948def7157d39bfafc5a&duoduo_type=2'
};



/// 2020年11月18日09:47:46
/// 首页轮播图的静态数据
/// v2.0
final List<IndexCarouselItemModel> indexCarouselsStateDatas = [
  IndexCarouselItemModel(
      title: '温暖秋冬,最高领50元优惠券', imageUrl: 'https://img.alicdn.com/imgextra/i2/2053469401/O1CN01zWvohl2JJhz8nII9X_!!2053469401.jpg', clickType: 'brower', params: '', intro: '一些备注,介绍'),
  IndexCarouselItemModel(title: '9块9爆品集', imageUrl: 'https://img.alicdn.com/imgextra/i3/2053469401/O1CN01ZAZQnc2JJi3AT22Il_!!2053469401.jpg', clickType: 'brower', params: '', intro: '一些备注,介绍'),
  IndexCarouselItemModel(title: '为你倾心', imageUrl: 'https://img.alicdn.com/imgextra/i4/2053469401/O1CN01u4PlHK2JJhzBsGH04_!!2053469401.jpg', clickType: 'brower', params: '', intro: '一些备注,介绍'),
  IndexCarouselItemModel(title: '休闲零食', imageUrl: 'https://img.alicdn.com/imgextra/i4/2053469401/O1CN01sZei422JJi3BIqYCi_!!2053469401.jpg', clickType: 'brower', params: '', intro: '一些备注,介绍'),
  IndexCarouselItemModel(title: '全球尖货', imageUrl: 'https://img.alicdn.com/imgextra/i1/2053469401/O1CN01oKK8D32JJi3C0Twb4_!!2053469401.jpg', clickType: 'brower', params: '', intro: '一些备注,介绍')
];

// 跳转到外部浏览器的参数
Map<String, String> getToBrowserParams(String url) {
  var map = <String, String>{};
  map['url'] = url; // 跳转url
  return map;
}
