// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../widgets/component/dao_ji_shi.dart';

// 倒计时组件
class DaojishiComp extends StatelessWidget {
  const DaojishiComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Daojishi(
      times: const [20, 40, 60],
      builderTurn: (int m, int s) {
        return Center(
          child: Container(
            margin: const EdgeInsets.only(top: 6),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
            decoration: BoxDecoration(
                color: Colors.red.shade500,
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lock_clock,
                  color: Colors.white,
                  size: 15,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '距离下次排名更新还有 $m 分 $s 秒',
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
