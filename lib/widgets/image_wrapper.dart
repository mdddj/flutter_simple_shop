import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  final Widget child;
  const ImageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: child),
      ),
    );
  }
}
