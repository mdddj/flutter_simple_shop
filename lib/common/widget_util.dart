// Flutter imports:
// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:dd_taoke_sdk/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// Project imports:
import '../constant/style.dart';
import '../provider/riverpod/category_riverpod.dart';
import '../widgets/component/custom_loading.dart';
import '../widgets/waterfall_goods_card.dart';
import 'widgets/simple_dialog.dart';

/// 组件工具类
abstract class WidgetUtilService {
  /// 垂直边距
  Widget marginTop({double? height});

  /// 横向边距
  Widget marginRight({double? width});

  /// 显示一个简单的弹窗提示
  Future<void> showSimpleDialog(String message, {String? title});

  Widget loading(double width, double height, {double? radius});

  List<Widget> categoryTabs(BuildContext context);

  Widget renderProductCard(Product product);
}

class WidgetUtils extends WidgetUtilService {
  double get kBodyHeight => Get.height - Get.mediaQuery.padding.top - kToolbarHeight;

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
    await Get.dialog(MySimpleDialog(
      message: message,
      title: title,
    ));
  }

  @override
  Widget loading(double width, double height, {double? radius}) {
    return Skeleton(
      width: width,
      height: height,
      cornerRadius: radius ?? 4,
    );
  }

  @override
  List<Widget> categoryTabs(BuildContext context) {
    return context
        .read(categoryRiverpod)
        .categorys
        .map((e) => Tab(
              text: e.cname,
            ))
        .toList();
  }

  @override
  Widget renderProductCard(Product product) {
    return WaterfallGoodsCard(product);
  }


  Future<T?> to<T>(Widget page)async{
    return await Get.context!.navigator.push<T>(SwipeablePageRoute(builder: (_)=> page));
  }
}
