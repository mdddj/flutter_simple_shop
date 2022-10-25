import 'package:flutter/material.dart';

import '../../../constant/index.dart';

class IndexCardWrapper extends StatelessWidget {
  final Widget child;
  const IndexCardWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      child: child,
    );
  }
}
