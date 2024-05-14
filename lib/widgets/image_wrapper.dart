import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  final Widget child;
  const ImageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: context.colorScheme.surfaceContainerHighest,
      child: Center(child: child),
    );
  }
}

extension AddIconWidgetEx on Widget {
  Widget addIcon({required Widget icon}) {
    return AddIconWidget(icon: icon, label: this);
  }
}

class AddIconWidget extends StatelessWidget {
  final Widget icon;
  final Widget label;
  const AddIconWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(
          width: 6,
        ),
        label,
      ],
    );
  }
}
