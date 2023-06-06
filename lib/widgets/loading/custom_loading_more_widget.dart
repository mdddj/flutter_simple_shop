import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_library_fast/loading_more_list_library_fast.dart';
import '../../assets.dart';
import '../../index.dart';

///自定义加载中状态
class CustomLoadingMoreWidgetWithSliver extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatus indicatorStatus;
  final  VoidCallback? retry;
  final Widget? emptyChild;
  const CustomLoadingMoreWidgetWithSliver(this.context, this.indicatorStatus, {Key? key, this.retry, this.emptyChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomLoadingMoreWidget(
      context,
      indicatorStatus,
      isSliver: true,
      retry: retry,
      emptyChild: emptyChild,
    );
  }
}

///自定义Loadingmore 加载状态展示
class CustomLoadingMoreWidget extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatus indicatorStatus;
  final bool isSliver;
  final VoidCallback? retry;
  final Widget? emptyChild;
  const CustomLoadingMoreWidget(this.context, this.indicatorStatus, {Key? key, this.isSliver = false, this.retry, this.emptyChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget child;
    switch (indicatorStatus) {
      case IndicatorStatus.fullScreenError:
        child =  _FullScreenError(retry: retry);
        if(isSliver){
          child = SliverFillRemaining(child: child);
        }
        break;
      case IndicatorStatus.fullScreenBusying:
        child = const _FullScreenBusying();
        if(isSliver){
          child = SliverFillRemaining(child: child);
        }
        break;
      case IndicatorStatus.loadingMoreBusying:
        child = const _LoadingMoreBusying();
        break;
      case IndicatorStatus.empty:
        child =  _Empty(child: emptyChild,);
        if(isSliver){
          child = SliverFillRemaining(child: child);
        }
        break;
      case IndicatorStatus.error:
        child = const _Error();
        break;
      case IndicatorStatus.noMoreLoad:
        child = Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text('没有更多了',style: context.textTheme.labelMedium?.copyWith(color: Colors.grey))),
        );
        break;
      case IndicatorStatus.none:
        child = const _Nothing();
        break;
      default:
        child = const SizedBox();
        break;
    }
    return child;
  }
}

///全面模式下出现异常
class _FullScreenError extends StatelessWidget {
  final VoidCallback? retry;
  const _FullScreenError({Key? key, this.retry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/err.svg',width: context.screenWidth * 0.2,colorFilter: ColorFilter.mode(context.colorScheme.secondary, BlendMode.srcIn),).padding(12),
             Text("服务繁忙,请稍后重试 (-1)",style: TextStyle(color: context.colorScheme.secondary),),
            if(retry!=null)
            FilledButton(onPressed: retry, child: const Text("刷新重试")).margin(32)
          ],
        ),
      ),
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
    return const MyLoading().defaultPadding12.center;
  }
}

///无数据
class _Empty extends ConsumerWidget {
  final Widget? child;
  const _Empty({Key? key,this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          const SizedBox(
            height: 12,
          ),
          child ?? FilledButton(
              onPressed: () {
                ref.read(homeModuleShowIndex.notifier).state = 0;
              },
              child: const Text('浏览购物'))
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
    return const Center(
      child: Text("我也是有底线的哦～"),
    );
  }
}
