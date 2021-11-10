// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../logic.dart';

class WriteBlogTags extends GetWidget<WriteBlogLogic> {
  const WriteBlogTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((){
      final tags = controller.tags;
      return Wrap(
        runSpacing: 5,
        spacing: 5,
        children: tags.map(renderItem).toList(),
      );
    });
  }

  Widget renderItem(String tag) {
    return GestureDetector(
      onTap: () => controller.removeTag(tag),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(5)),
        child: Text(tag),
      ),
    );
  }
}
