// Project imports:
import 'model.dart';

abstract class PublicDetailViewAbs {

  /// 加载所需数据
  Future<PublicDetailModel?> fetchData();

  /// 点击分享事件
  Future<void> onShare();

  /// 点击了领券按钮
  Future<void> onGetCoupon();

  /// 获取类型名字
  String getTypeLabel();
}
