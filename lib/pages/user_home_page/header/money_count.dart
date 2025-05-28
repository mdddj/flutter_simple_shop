part of '../../index.dart';

/// 提现相关
class MoneyCounterWidget extends StatelessWidget {
  const MoneyCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: _itemBuilder);
  }

  Widget _itemBuilder(BuildContext innerContext, int index) {
    return const Column(
      children: [Text('100'), Text('累计提现')],
    );
  }
}
