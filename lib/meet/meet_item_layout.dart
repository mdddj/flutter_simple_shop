import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../constant/index.dart';
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
      elevation: 0,
      color: context.colorScheme.surfaceVariant,
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
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
          ListTile(
            title: Text(
              meetModel.content,
              style: meetModel.isEmptyConent ? context.textTheme.bodyMedium : context.textTheme.bodyMedium,
            ),
          ),

          //图片列表
          WaterfallFlow.count(
            shrinkWrap: true,
            padding: const EdgeInsets.all(12),
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 3,
            children: [...meetModel.images.map((element) => ExtendedImage.network(element.url,borderRadius: BorderRadius.circular(8),shape: BoxShape.rectangle,))],
          )
        ],
      ),
    );
  }
}
