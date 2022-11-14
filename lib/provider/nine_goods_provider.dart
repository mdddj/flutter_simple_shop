// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';

class NineGoodsProvider extends ChangeNotifier {
  List<Product>? goods = [];
  String currentNineCid = '-1';
  int page = 1;
}
