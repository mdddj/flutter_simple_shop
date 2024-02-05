import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_library_fast/model/status.dart';

import '../../assets.dart';
import '../../index.dart';

///自定义加载中状态
class CustomLoadingMoreWidgetWithSliver extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatusModel indicatorStatus;
  final VoidCallback? retry;
  final Widget? emptyChild;

  const CustomLoadingMoreWidgetWithSliver(this.context, this.indicatorStatus,
      {super.key, this.retry, this.emptyChild});

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
  final IndicatorStatusModel indicatorStatus;
  final bool isSliver;
  final VoidCallback? retry;
  final Widget? emptyChild;

  const CustomLoadingMoreWidget(this.context, this.indicatorStatus,
      {super.key, this.isSliver = false, this.retry, this.emptyChild});

  @override
  Widget build(BuildContext context) {
    late Widget child;

    indicatorStatus.when(
      none: () {
        child = const _Nothing();
      },
      empty: (_) {
        child = _Empty(
          child: emptyChild,
        );
        if (isSliver) {
          child = SliverFillRemaining(child: child);
        }
      },
      loadingMoreBusying: () {
        child = const _LoadingMoreBusying();
      },
      fullScreenBusying: () {
        child = const _FullScreenBusying();
        if (isSliver) {
          child = SliverFillRemaining(child: child);
        }
      },
      error: (error, stackTrace, action) {
        child = const _Error();
      },
      fullScreenError: (error, stackTrace, action) {
        child = _FullScreenError(
          retry: () {
            action.errorRefresh();
          },
        );
        if (isSliver) {
          child = SliverFillRemaining(child: child);
        }
      },
      noMoreLoad: () {
        child = Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text('没有更多了',
                  style: context.textTheme.labelMedium
                      ?.copyWith(color: Colors.grey))),
        );
      },
    );
    return child;
  }
}

///全面模式下出现异常
class _FullScreenError extends StatelessWidget {
  final VoidCallback? retry;

  const _FullScreenError({this.retry});

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/err.svg',
                width: context.screenWidth * 0.2,
                colorFilter: ColorFilter.mode(
                    context.colorScheme.secondary, BlendMode.srcIn),
              ),
            ),
            Text(
              "服务繁忙,请稍后重试 (-1)",
              style: TextStyle(color: context.colorScheme.secondary),
            ),
            if (retry != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    FilledButton(onPressed: retry, child: const Text("刷新重试")),
              )
          ],
        ),
      ),
    );
  }
}

///全屏加载中
class _FullScreenBusying extends StatelessWidget {
  const _FullScreenBusying();

  @override
  Widget build(BuildContext context) {
    return const _LoadingMoreBusying();
  }
}

///加载中状态
class _LoadingMoreBusying extends StatelessWidget {
  const _LoadingMoreBusying();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: MyLoading(),
      ),
    );
  }
}

///无数据
class _Empty extends ConsumerWidget {
  final Widget? child;

  const _Empty({this.child});

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
          child ??
              FilledButton(
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
  const _Error();

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
  const _Nothing();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我也是有底线的哦～"),
    );
  }
}
