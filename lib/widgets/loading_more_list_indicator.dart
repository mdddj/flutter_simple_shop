part of widgets;

// Package imports

class LoadingMoreListCostumIndicator extends StatelessWidget {
  final IndicatorStatus status;
  final Function? tryAgain;
  final String? text;
  final Color? backgroundColor;
  final bool isSliver;
  final Widget? emptyWidget;
  const LoadingMoreListCostumIndicator(this.status,
      {this.tryAgain,
      this.text,
      this.backgroundColor,
      this.isSliver = false,
      this.emptyWidget,
      Key? key})
      : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    Widget? widget;
    switch (status) {
      case IndicatorStatus.none:
        widget = Container(height: 0.0);
        break;
      case IndicatorStatus.loadingMoreBusying:
        widget = const MyLoading();
        widget = _setbackground(false, widget, 35.0, context);
        break;
      case IndicatorStatus.fullScreenBusying:
        widget = const MyLoading();
        widget = _setbackground(true, widget, double.infinity, context);
        if (isSliver) {
          widget = SliverFillRemaining(
            child: widget,
          );
        } else {
          widget = CustomScrollView(
            slivers: <Widget>[
              SliverFillRemaining(
                child: widget,
              )
            ],
          );
        }
        break;
      case IndicatorStatus.error:
        widget = Text(
          text ?? '加载失败,请重试.',
        );
        widget = _setbackground(false, widget, 35.0, context);
        if (tryAgain != null) {
          widget = GestureDetector(
            onTap: () {
              tryAgain!();
            },
            child: widget,
          );
        }
        break;
      case IndicatorStatus.fullScreenError:
        widget = Text(
          text ?? '加载失败,请重试.',
        );
        widget = _setbackground(true, widget, double.infinity, context);
        if (tryAgain != null) {
          widget = GestureDetector(
            onTap: () {
              tryAgain!();
            },
            child: widget,
          );
        }
        if (isSliver) {
          widget = SliverFillRemaining(
            child: widget,
          );
        } else {
          widget = CustomScrollView(
            slivers: <Widget>[
              SliverFillRemaining(
                child: widget,
              )
            ],
          );
        }
        break;
      case IndicatorStatus.noMoreLoad:
        widget = Text(text ?? '没有更多了.');
        widget = _setbackground(false, widget, 35.0, context);
        break;
      case IndicatorStatus.empty:
        widget = EmptyWidget(
          text ?? '空空如也.',
          emptyWidget: emptyWidget,
        );
        widget = _setbackground(true, widget, double.infinity, context);
        if (isSliver) {
          widget = SliverFillRemaining(
            child: widget,
          );
        } else {
          widget = CustomScrollView(
            slivers: <Widget>[
              SliverFillRemaining(
                child: widget,
              )
            ],
          );
        }
        break;
    }
    return widget;
  }

  Widget _setbackground(
      bool full, Widget widget, double height, BuildContext context) {
    widget = Container(
        width: double.infinity,
        height: height,
        color: context.theme.scaffoldBackgroundColor,
        alignment: Alignment.center,
        child: widget);
    return widget;
  }

  Widget getIndicator(BuildContext context) {
    final theme = Theme.of(context);
    return theme.platform == TargetPlatform.iOS
        ? const CupertinoActivityIndicator(
            animating: true,
            radius: 16.0,
          )
        : const CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation(Colors.grey),
          );
  }
}
