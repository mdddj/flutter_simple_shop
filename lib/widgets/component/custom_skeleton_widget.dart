// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'custom_skeleton_container.dart';

class Skeleton extends StatelessWidget {
  final Widget? child;

  const Skeleton({this.child,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadAnimation(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white), color: Colors.white),
        child: child,
      ),
    );
  }
}
