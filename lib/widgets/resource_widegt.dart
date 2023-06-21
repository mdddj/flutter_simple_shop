import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

import '../freezed/app_action_menu.dart';
import '../freezed/resource_category.dart';
import '../provider/riverpod/model/my_user.dart';

class ResourceWidget extends StatelessWidget {
  final Resource resource;
  final AppActionMenu? menu;

  const ResourceWidget({super.key, required this.resource, this.menu});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onLongPress: () {
          if (menu != null) {
            menu?.show(context);
          }
        },
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0.01,
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
                            params: ImageParams(
                                size: double.infinity,
                                borderRadius: BorderRadius.circular(12),
                                shape: BoxShape.rectangle,
                                fit: BoxFit.cover)))),
              if (resource.images.length >= 2) _Images(resource: resource),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(resource.title,
                            style: context.textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700))
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

class _Images extends StatelessWidget {
  final Resource resource;

  const _Images({super.key, required this.resource});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
            aspectRatio: 1,
            child: ImageView(
                image: MyImage.network(
                    url: resource.firstImageUrl,
                    params: ImageParams(
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8))))),
        Positioned(bottom: 2,right: 1,child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 1),
          decoration: BoxDecoration(
            color: context.cardColor.withOpacity(.27),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text('${resource.imageSize}张',style: context.textTheme.labelSmall),
        ),)
      ],
    );
  }
}
