part of widgets;

/// 自定义骨架屏
class LoadAnimation extends StatefulWidget {
  final Widget child;

  const LoadAnimation({required this.child, Key? key}) : super(key: key);

  @override
  LoadAnimationState createState() => LoadAnimationState();
}

class LoadAnimationState extends State<LoadAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        Positioned.fill(
          child: ClipRect(
              child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return FractionallySizedBox(
                widthFactor: .2,
                alignment: AlignmentGeometryTween(
                  begin: const Alignment(-1.0 - .2 * 3, .0),
                  end: const Alignment(1.0 + .2 * 3, .0),
                )
                    .chain(CurveTween(curve: Curves.easeOut))
                    .evaluate(controller)!,
                child: child,
              );
            },
            child: const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(0, 255, 255, 255),
                  Color.fromRGBO(222, 222, 222, 0.2),
                ]),
              ),
            ),
          )),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
