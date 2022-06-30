// Flutter imports:
// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils.dart';
import '../../../constant/style.dart';
// Project imports:
import '../../../modals/user.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import '../../../util/navigator_util.dart';

const kAvatarHeight = 58.0;

// 头部容器
class HeaderIndex extends ConsumerWidget {
  const HeaderIndex({Key? key}) : super(key: key);

  final TextStyle subTitleStyle =
      const TextStyle(color: Colors.black26, fontSize: 12);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user = ref.watch(userRiverpod).user;
    print('进来了:$user');
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          utils.widgetUtils.marginTop(),
          _loginWidgetLayout(context),
          // _renderCounts(),
          const SizedBox(
            height: 44,
          ),
          _renderVip()
        ],
      ),
    );
  }

// 开通会员
  Widget _renderVip() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange.shade200,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 60,
            child: Center(
              child: Image.asset(
                'assets/images/vip.png',
                width: 38,
                height: 38,
              ),
            ),
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '会员可享有多项特权',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('未开通特权', style: TextStyle(color: Colors.black))
                ]),
          ),
          Center(
            child: SizedBox(
              width: 100,
              height: 38,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)))),
                child: const Text(
                  '免费激活',
                  style: TextStyle(color: Colors.yellow),
                ),
                onPressed: () {
                  // 激活会员
                },
              ),
            ),
          ),
          const SizedBox(
            width: 12,
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
              'https://s3.bmp.ovh/imgs/2022/03/63a168e31a3ae7e0.jpeg',
              width: kAvatarHeight,
              height: kAvatarHeight,
              borderRadius: BorderRadius.circular(50),
              shape: BoxShape.rectangle,
            ),
            utils.widgetUtils.marginRight(),
            Column(
              children: [
                Text(
                  user.nickName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  'ID: ${user.loginNumber}',
                  style: const TextStyle(color: Colors.white54),
                )
              ],
            )
            // 昵称
          ],
        ),
      ],
    );
  }

  /// 登录跳转
  Widget _loginWidgetLayout(BuildContext context) {
    
    return GestureDetector(
      onTap: () => NavigatorUtil.gotoUserLoginPage(context),
      child: Container(
        alignment: Alignment.center,
        child: Row(
              children: [
                const SizedBox(
                  width: 68,
                  height: 68,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.people_outline,
                      size: 29,
                      color: Colors.pink,
                    ),
                  ),
                ),
                const SizedBox(width: 12,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '登录/注册',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(
                      height: 4,
                    ),
                    // 登录图标
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/qq.svg',
                          width: 32,
                          height: 32,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(
                          'assets/svg/wechat.svg',
                          width: 28,
                          height: 28,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
