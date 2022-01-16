import 'package:flutter/material.dart';

/// 提现相关
class MoneyCounterWidget extends StatelessWidget {
  const MoneyCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: _itemBuilder);
  }

  Widget _itemBuilder(innerContext, int index) {
    return Column(
      children: const [Text('100'), Text('累计提现')],
    );
  }
}
