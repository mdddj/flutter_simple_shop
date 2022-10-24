// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

class LeftWidgetItem extends StatelessWidget {
  final Category item;
  final bool? isCurrent;

  const LeftWidgetItem({required this.item, this.isCurrent,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: isCurrent! ? null : context.colorScheme.background),
      child: Text(
        item.cname!,
        style: TextStyle(color: isCurrent! ? context.primaryColor : null),
      ),
    );
  }
}
