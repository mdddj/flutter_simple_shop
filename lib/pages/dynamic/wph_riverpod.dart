

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../service/api_service.dart';



/// 唯品会
class WphState extends ChangeNotifier {

  List<dynamic> products = [];

  int page = 1;


  Future<void> init() async {
    await tkApi.getWphJbProducts(page,valueChanged: (list){
      products.addAll(list);
    });
    notifyListeners();
  }


  // 下一页
  Future<void> nextPage() async {
    page ++ ;
    await init();
  }

}
