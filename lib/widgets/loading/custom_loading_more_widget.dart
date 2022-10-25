import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';

///自定义Loadingmore 加载状态展示
class CustomLoadingMoreWidget extends StatelessWidget {
  final BuildContext context;
  final IndicatorStatus indicatorStatus;

  const CustomLoadingMoreWidget(this.context, this.indicatorStatus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (indicatorStatus) {
      case IndicatorStatus.fullScreenError:
        return const _FullScreenError();
      case IndicatorStatus.fullScreenBusying:
        return const _FullScreenBusying();
      case IndicatorStatus.loadingMoreBusying:
        return const _LoadingMoreBusying();
      case IndicatorStatus.empty:
        return const _Empty();
      case IndicatorStatus.error:
        return const _Error();
      case IndicatorStatus.none:
        return const _Nothing();
      default:
        return const SizedBox();
    }
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
          SizedBox(
            width: 15,
            height: 15,
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 12,),
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
      child: const Text("这里什么都没有~"),
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
