import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:flutter/material.dart';

import '../freezed/resource_category.dart';
import '../provider/riverpod/model/my_user.dart';

class ResourceWidget extends StatelessWidget {
  final Resource resource;

  const ResourceWidget({super.key, required this.resource});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (resource.hasImages && resource.imageSize == 1)
              AspectRatio(
                  aspectRatio:
                      resource.firstImage.width / resource.firstImage.height,
                  child: ImageView(
                      image: MyImage.network(
                          url: resource.firstImageUrl,
                          params:  ImageParams(size: double.infinity,borderRadius: BorderRadius.circular(12),shape: BoxShape.rectangle,fit: BoxFit.cover)))),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(resource.title, style: context.textTheme.titleLarge)
                      .marginOnly(bottom: 12)
                      .visible(resource.title.isNotEmpty),
                  Text(resource.content),
                  const SizedBox(height: 12),
                  builderHeader(),
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  ///用户信息
  Widget builderHeader() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        resource.user.getAvatar(),
        const SizedBox(
          width: 6,
        ),
        Text(
          resource.user.getShowUserName,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

//图标+文字操作
class IconAction extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconAction({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.grey,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: context.textTheme.labelLarge?.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
