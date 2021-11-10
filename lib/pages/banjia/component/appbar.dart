// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/model/halfday_result.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../resp.dart';

class BanjiaSessions extends StatelessWidget {
  const BanjiaSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
        final sessions = watch(banjiaRiverpod).sessions;
        if (sessions.isEmpty) return Container();
        final curr = watch(banjiaRiverpod).currTime;
        return Container(
            color: Colors.pink,
            height: 48,
            child: ListView.builder(
              itemBuilder: (_, index) => renderItem(sessions[index], curr,context),
              itemCount: sessions.length,
              scrollDirection: Axis.horizontal,
            ));
      },
    );
  }

  Widget renderItem(SessionsList item, String curr,BuildContext context) {
    final isCurr = item.hpdTime == curr;
    var showText = '';
    if (item.status == '0') {
      showText = '已结束';
    } else if (item.status == '1') {
      showText = '正在抢购';
    } else {
      showText = '等待开始';
    }

    return GestureDetector(
      onTap: (){
        context.read(banjiaRiverpod).onChange(item.hpdTime!);
      },
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${item.hpdTime}:00',
              style: const TextStyle(color: Colors.white,fontSize: 14),
            ),
            const SizedBox(height: 2),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    color: isCurr ? Colors.white : Colors.pink,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  showText,
                  style: TextStyle(color: isCurr ? Colors.black : Colors.white,fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}
