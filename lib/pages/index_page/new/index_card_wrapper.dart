import 'package:flutter/material.dart';

class IndexCardWrapper extends StatelessWidget {
  final Widget child;

  const IndexCardWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: child,
    );
  }
}
