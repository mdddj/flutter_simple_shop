// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../resp.dart';

class BanjiaSessions extends StatelessWidget {
  const BanjiaSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BanjiaResp>(
      builder: (BuildContext context,
          value, Widget? child) {
        final sessions = value.sessions;
        if (sessions.isEmpty) return Container();
        final curr = value.currTime;
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
        context.read<BanjiaResp>().onChange(item.hpdTime!);
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
