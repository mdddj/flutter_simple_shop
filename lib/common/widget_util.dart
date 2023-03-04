import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import '../constant/style.dart';
import '../widgets/component/custom_loading.dart';
import '../widgets/waterfall_goods_card.dart';

/// 组件工具类
abstract class WidgetUtilService {
  /// 垂直边距
  Widget marginTop({double? height});

  /// 横向边距
  Widget marginRight({double? width});

  /// 显示一个简单的弹窗提示
  Future<void> showSimpleDialog(String message, {String? title});

  Widget loading(double width, double height, {double? radius});


  Widget renderProductCard(ProductModel product);
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
      cornerRadius: radius ?? 4, child: const SizedBox(),
    );
  }



  @override
  Widget renderProductCard(ProductModel product) {
    return WaterfallGoodsCard(product);
  }

}
