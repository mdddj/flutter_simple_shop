import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../../index.dart';
import 'pages/resource_list.dart';

/// 用户主页布局
class UserIndexHome extends ConsumerStatefulWidget {
  const UserIndexHome({Key? key}) : super(key: key);

  @override
  UserIndexHomeState createState() => UserIndexHomeState();
}

class UserIndexHomeState extends ConsumerState<UserIndexHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          Container(
            decoration: BoxDecoration(color: context.primaryColor),
            child: Column(children: [
              const UserHomeAppBar(),
              _buildHeaderWidget(),
            ]),
          ).toSliverWidget,
          _renderUserValues().toSliverWidget,
          const UserResourceWidget()
        ]
      ),
    );
  }







// 用户订单和优惠券,余额等数据
  Widget _renderUserValues() {
    return const Card(
        child: Padding(
      padding: EdgeInsets.all(18.0),
      child: UserTokens(),
    ));
  }





// 用户中心的头部
  Widget _buildHeaderWidget() {
    return const HeaderIndex();
  }
}

class UserTokens extends ConsumerWidget {
  const UserTokens({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user = ref.user;
    if(user == null){
      return const SizedBox();
    }
    return WaterfallFlow.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        _countItem('令牌','${user.openAiTokens}',context),
        _countItem('优惠券', '32张',context),
        _countItem('积分', '289',context),
      ],
    );
  }
  Widget _countItem(String key, String value,BuildContext context) {
    return Column(children: [
      Text(value, style: context.textTheme.titleMedium),
      const SizedBox(
        height: 6,
      ),
      Text(key, style: context.textTheme.bodySmall)
    ]);
  }
}

