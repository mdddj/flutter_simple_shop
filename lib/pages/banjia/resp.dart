
import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:flutter/material.dart';


///半价
class BanjiaResp extends ChangeNotifier {
  List<HalfPriceListElement> products = [];
  List<SessionsList> sessions = [];
  String? banner;

  String currTime = '';

  bool loading = false;

  // 初始化
  Future<bool> init({bool change = false}) async {
    loading = true;
    products.clear();
    if (!change) {
      sessions.clear();
    }

    notifyListeners();

    final result =
        await DdTaokeSdk.instance.getHalfdayProducts(sessions: currTime);

    if (result != null) {
      products.addAll(result.halfPriceInfo!.list ?? []);
      if (!change) {
        sessions.addAll(result.sessionsList ?? []);
      }

      if (result.halfPriceInfo!.banner != null) {
        banner = result.halfPriceInfo!.banner;
      }
      if (!change) {
        currTime =
            sessions.firstWhere((element) => element.status == '1').hpdTime ??
                '';
      }

      loading = false;
      notifyListeners();
    }

    return false;
  }

  void onChange(String time) {
    currTime = time;
    init(change: true);
  }
}
