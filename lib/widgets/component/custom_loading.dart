// Flutter imports:
// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

/// 图片加载loading
Widget loadingState(ExtendedImageState state) {
  final w = state.imageWidget;
  final wd = w.width ?? double.infinity;
  final he = w.height  ?? wd;
  switch (state.extendedImageLoadState) {
    case LoadState.loading:
      return Skeleton(
        width: wd,
        height: he, child: const SizedBox(),
      );
    case LoadState.completed:
      return ExtendedRawImage(
        image: state.extendedImageInfo?.image,
      );
    case LoadState.failed:
      return GestureDetector(
        onTap: () {
          state.reLoadImage();
        },
        child: const Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: Text('图片加载失败'),
            )
          ],
        ),
      );
    default:
      return Container();
  }
}


class Skeleton extends StatefulWidget {
  final double height;
  final double width;
  final double cornerRadius;
  final Widget? child;
  const Skeleton({
    Key? key,
    this.height = 20,
    this.width = 200,
    this.cornerRadius = 4, this.child,
  }) : super(key: key);

  @override
  SkeletonState createState() => SkeletonState();
}

class SkeletonState extends State<Skeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(
          () {
        setState(() {});
      },
    );

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.cornerRadius),
        gradient: LinearGradient(
          begin: Alignment(gradientPosition.value, 0),
          end: const Alignment(-1, 0),
          colors: const [
            Color(0x0D000000),
            Color(0x1A000000),
            Color(0x0D000000)
          ],
        ),
      ),
      child: widget.child,
    );
  }
}
