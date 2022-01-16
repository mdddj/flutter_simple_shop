// Flutter imports:
// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/utils.dart';
import '../../../constant/style.dart';
// Project imports:
import '../../../modals/user.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import '../../../util/navigator_util.dart';
import 'money_count.dart';

const kAvatarHeight = 58.0;

// 头部容器
class HeaderIndex extends StatelessWidget {
  const HeaderIndex({Key? key}) : super(key: key);

  final TextStyle subTitleStyle =
      const TextStyle(color: Colors.black26, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          utils.widgetUtils.marginTop(),
          Consumer<UserModel>(
            builder: (BuildContext context,
                value, Widget? child) {
              final user = value.user;
              if (user == null) {
                return _loginWidgetLayout(context);
              }
              return _loginSuccessLayout(user);
            },
          )
        ],
      ),
    );
  }

  /// 已登录显示
  Widget _loginSuccessLayout(User user) {
    return Column(
      children: [
        Row(
          children: [
            utils.widgetUtils.marginRight(),
            // 用户头像
            ExtendedImage.network(
              user.picture,
              width: kAvatarHeight,
              height: kAvatarHeight,
              borderRadius: BorderRadius.circular(50),
              shape: BoxShape.rectangle,
            ),
            utils.widgetUtils.marginRight(),
            // 昵称
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.nickName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'ID: ${user.loginNumber}',
                        style: TextStyle(color: Colors.grey.shade400),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right_outlined,
                        color: Colors.grey.shade400,
                      ))
                ],
              ),
            ),
          ],
        ),
        const MoneyCounterWidget()
      ],
    );
  }

  /// 登录跳转
  Widget _loginWidgetLayout(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigatorUtil.gotoUserLoginPage(context),
      child: const Text(
        '登录/注册',
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
