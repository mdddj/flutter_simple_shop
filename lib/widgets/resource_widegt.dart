import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:flutter/material.dart';

import '../freezed/resource_category.dart';

class ResourceWidget extends StatelessWidget {
  final Resource resource;

  const ResourceWidget({super.key, required this.resource});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    child: ImageView(
                        image: MyImage.network(
                            url: resource.user.picture,
                            params: ImageParams(size: 40, borderRadius: BorderRadius.circular(20), shape: BoxShape.rectangle))),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(resource.user.nickName), Text(resource.createdate,style: context.textTheme.labelSmall?.copyWith(color: Colors.grey))],
                  ),
                )),
                FilledButton.tonal(onPressed: (){}, child: const Text('关注')),
                const SizedBox(width: 4,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
              child: Text(resource.content),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconAction(icon: Icons.share,text: '分享',),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     IconAction(icon: Icons.favorite_border, text: '0'),
                     SizedBox(width: 30,),
                     IconAction(icon: Icons.comment, text: '0')
                   ],
                 )
                ],
              ),
            )
          ],
        ),
      ),
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
        Icon(icon,size: 20,color: Colors.grey,),
        const SizedBox(width: 4),
        Text(text,style: context.textTheme.labelLarge?.copyWith(
          color: Colors.grey
        ),)
      ],
    );
  }
}

