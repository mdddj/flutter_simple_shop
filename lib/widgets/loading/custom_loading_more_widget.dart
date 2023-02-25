import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../assets.dart';

///自定义加载中状态
class CustomLoadingMoreWidgetWithSliver extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatus indicatorStatus;

  const CustomLoadingMoreWidgetWithSliver(this.context, this.indicatorStatus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomLoadingMoreWidget(context, indicatorStatus).toSliverWidget;
  }
}

///自定义Loadingmore 加载状态展示
class CustomLoadingMoreWidget extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatus indicatorStatus;
  final bool isSliver;

  const CustomLoadingMoreWidget(this.context, this.indicatorStatus, {Key? key, this.isSliver = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget child;
    switch (indicatorStatus) {
      case IndicatorStatus.fullScreenError:
        child = const _FullScreenError();
        break;
      case IndicatorStatus.fullScreenBusying:
        child = const _FullScreenBusying();
        break;
      case IndicatorStatus.loadingMoreBusying:
        child = const _LoadingMoreBusying();
        break;
      case IndicatorStatus.empty:
        child = const _Empty();
        break;
      case IndicatorStatus.error:
        child = const _Error();
        break;
      case IndicatorStatus.none:
        child = const _Nothing();
        break;
      default:
        child = const SizedBox();
        break;
    }
    return isSliver ? child.toSliverWidget : child;
  }
}

///全面模式下出现异常
class _FullScreenError extends StatelessWidget {
  const _FullScreenError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: const Text("服务繁忙,请稍后重试 (-1)"),
    );
  }
}

///全屏加载中
class _FullScreenBusying extends StatelessWidget {
  const _FullScreenBusying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _LoadingMoreBusying();
  }
}

///加载中状态
class _LoadingMoreBusying extends StatelessWidget {
  const _LoadingMoreBusying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 12),
          SizedBox(
            width: 15,
            height: 15,
            child: CircularProgressIndicator(),
          ),
          SizedBox(
            height: 12,
          ),
          Text('加载中')
        ],
      ),
    );
  }
}

///无数据
class _Empty extends StatelessWidget {
  const _Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsSvgEmptySvg,
            width: 44,
            height: 44,
            colorFilter: ColorFilter.mode(context.iconColor!, BlendMode.srcIn),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("暂时没有数据呢~", style: context.textTheme.bodyLarge),
          const SizedBox(height: 12,),
          FilledButton(onPressed: (){}, child: const Text('浏览购物'))
        ],
      ),
    );
  }
}

///出现错误
class _Error extends StatelessWidget {
  const _Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: const Text('服务繁忙,请稍后重试 (-2)'),
    );
  }
}

///什么都没有
class _Nothing extends StatelessWidget {
  const _Nothing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Text("空空如也"),
      ),
    );
  }
}
