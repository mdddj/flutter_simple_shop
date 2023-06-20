part of provider;

final ddqRiverpod = ChangeNotifierProvider((ref) => DdqProvider());

// 钉钉抢状态管理
class DdqProvider extends ChangeNotifier with BaseProvider {
  List<ProductModel> goodsList = [];
  List<RoundsList> roundsList = [];
  DateTime? ddqTime;
  int? status;

  //时间段
  String dateTime = '';

  /// 加载数据
  Future<void> loadData() async {
    setLoading(true);
    final result = await DdTaokeSdk.instance.getDdq(
        requestParamsBuilder: (RequestParams requestParams) {
      return requestParams;
    });
    setLoading(false);
    if (result != null) {
      goodsList.addAll(result.goodsList ?? []);
      roundsList.addAll(result.roundsList ?? []);
    }
    notifyListeners();
  }

  Future<void> timeChange(DateTime? time, int? state) async {
    ddqTime = time;
    goodsList = [];
    status = state;
    dateTime = time.toString();
    await loadData();
  }
}
