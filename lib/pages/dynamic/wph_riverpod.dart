

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



final wphRiveroid = ChangeNotifierProvider((ref) => WphState());
/// 唯品会
class WphState extends ChangeNotifier {

  List<dynamic> products = [];

  int page = 1;


  Future<void> init() async {
  }


  // 下一页
  Future<void> nextPage() async {
    page ++ ;
    await init();
  }

}
