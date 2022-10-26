import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

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
  const MeetItemLayout(this.context, this.meetModel,this.index,{Key? key}) : super(key: key);

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
                DefaultAvatarWidget(meetModel.user.picture),
                DefaultUsernameWidget(meetModel.user)
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Text(meetModel.content,style: meetModel.isEmptyConent ? context.textTheme.bodyMedium : context.textTheme.bodyText1,),
          ],
        ),
      ),
    );
  }
}
