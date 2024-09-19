import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../index.dart';
import '../widgets/default_avatar_widget.dart';
import '../widgets/default_user_name.dart';
import 'meet_model.dart';

///布局
///
class MeetItemLayout extends StatelessWidget {
  final BuildContext context;
  final MeetModel meetModel;
  final int index;

  const MeetItemLayout(this.context, this.meetModel, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            isThreeLine: true,
            leading: DefaultAvatarWidget(
              meetModel.user.picture,
              size: 40,
            ),
            title: DefaultUsernameWidget(meetModel.user),
            subtitle: Text(meetModel.createDate,
                style:
                    context.textTheme.labelSmall?.copyWith(color: Colors.grey)),
          ),
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 0,
              color: context.colorScheme.surfaceContainerHighest,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('称呼:${meetModel.name}'),
                  Text("年龄:${meetModel.age}"),
                  Text("地址:${meetModel.location}"),
                  Text("面基地点:${meetModel.toLocation}"),
                  Text("面基事件:${meetModel.mianjiInfo}"),
                ],
              ),
            ),
          ),

          //图片列表
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('自拍').marginOnly(bottom: 12),
                WaterfallFlow.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  crossAxisCount: 5,
                  children: [
                    ...meetModel.images.map((element) => ImageView(
                            image: MyImage.network(
                                url: element.url,
                                params: ImageParams(
                                    size: double.infinity,
                                    borderRadius: 12.borderRadius,
                                    fit: BoxFit.cover)))
                        .constraintBox((size, child) => SizedBox(
                              width: size.maxWidth,
                              height: size.maxWidth,
                              child: child.clipRadius(12).click(() {
                                context.navToWidget(
                                    to: ImagePreview(
                                        images: meetModel.images
                                            .map((element2) =>
                                                PictureSelectionItemModel
                                                    .network(url: element2.url))
                                            .toList(),
                                        index:
                                            meetModel.images.indexOf(element)));
                              }),
                            )))
                  ],
                ),
              ],
            ),
          ).visible(meetModel.images.isNotEmpty),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('接受面基')),
              const SizedBox(width: 12),
              FilledButton(
                  onPressed: () {
                    context.push('${pagerUtil.resourceList.routername}典典的面基记录');
                  },
                  child: const Text("查看面基记录"))
            ],
          )
        ],
      ),
    );
  }
}
