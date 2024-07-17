part of 'index.dart';

/// 组件工具类
abstract class WidgetUtilService {
  /// 垂直边距
  Widget marginTop({double? height});

  /// 横向边距
  Widget marginRight({double? width});

  /// 显示一个简单的弹窗提示
  Future<void> showSimpleDialog(String message, {String? title});

  Widget loading(double width, double height, {double? radius});

  Widget renderProductCard(Product product);
}

class WidgetUtils extends WidgetUtilService {
  @override
  Widget marginTop({double? height}) {
    return SizedBox(
      height: height ?? kDefaultPadding,
    );
  }

  @override
  Widget marginRight({double? width}) {
    return SizedBox(
      width: width ?? kDefaultPadding,
    );
  }

  @override
  Future<void> showSimpleDialog(String message, {String? title}) async {
    showIosDialog(message);
  }

  @override
  Widget loading(double width, double height, {double? radius}) {
    return Skeleton(
      width: width,
      height: height,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
    );
  }

  @override
  Widget renderProductCard(Product product) {
    return WaterfallGoodsCard(product);
  }
}
