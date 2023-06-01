import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../widgets/default_avatar_widget.dart';
import '../widgets/default_user_name.dart';
import 'meet_model.dart';

///布局
///
class MeetItemLayout extends StatelessWidget {
  final BuildContext context;
  final MeetModel meetModel;
  final int index;

  const MeetItemLayout(this.context, this.meetModel, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: DefaultAvatarWidget(
                meetModel.user.picture,
                size: 50,
              ),
              title: DefaultUsernameWidget(meetModel.user),
              subtitle: Text(meetModel.createDate),
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: context.colorScheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.all(12),
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
            ),
      
            //图片列表
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('自拍'),
                  WaterfallFlow.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 5,
                    children: [...meetModel.images.map((element) => ExtendedImage.network(element.url,borderRadius: BorderRadius.circular(8),shape: BoxShape.rectangle,))],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('接受面基')),
                const SizedBox(width: 12),
                FilledButton(onPressed: (){}, child: const Text("查看面基记录"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
