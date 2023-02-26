import 'package:fast_immutable_collections/fast_immutable_collections.dart';

enum JiujiuTabTypes {
  recommend("推荐", "-1"),
  five('5.9元专区', '1'),
  ninenine('9.9元专区', '2'),
  nineteen('19.9元专区', '3');

  const JiujiuTabTypes(this.title, this.paramsValue);

  final String title;
  final String paramsValue;
}

final ninenineTypes = JiujiuTabTypes.values.lock;