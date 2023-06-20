part of provider;

class UserProvider extends ChangeNotifier {
  List<Good>? goods = []; // 商品列表
  int page = 1; // 第几页
  bool isEditFavoriteIng = false; //是否在编辑收藏商品
  List<String> editFavoriteIds = []; // 用户想要删除收藏的商品
  //------------------------收藏相关的操作和属性写在这里面

  //全选或者取消全选,ture表示全选
  void selectAll(bool selectAll) {
    if (selectAll) {
      for (var good in goods!) {
        if (!editFavoriteIds.contains(good.id.toString())) {
          editFavoriteIds.add(good.id.toString());
        }
      }
    } else {
      editFavoriteIds = [];
    }
    notifyListeners();
  }

  // 确认删除收藏按钮被按下
  void removeFavoriteOk() {
    var toRemove = <Good>[];
    if (editFavoriteIds.isNotEmpty) {
      for (var id in editFavoriteIds) {
        for (var good in goods!) {
          if (good.id.toString() == id) {
            toRemove.add(good);
          }
        }
      }
      goods!.removeWhere((e) => toRemove.contains(e));
      editFavoriteIds = [];
      isEditFavoriteIng = false;
      notifyListeners();
    }
  }

  //收藏页面编辑图标被按下
  void editorIconClickHandleFun(bool edit) {
    isEditFavoriteIng = edit;
    if (!edit) {
      // 重置ids
      editFavoriteIds.clear();
    }
    notifyListeners();
  }

  // 将要删除的id加到editFavoriteIds里面
  void addRemoveFavoriteGoodsId(String goodsId) {
    editFavoriteIds.add(goodsId);
    notifyListeners();
  }

  // 取消一个将要删除的id
  void removeFavoriteGoodsId(String goodsId) {
    editFavoriteIds.remove(goodsId);
    notifyListeners();
  }

  // 重置收藏属性值
  void resetFavoriteData() {
    goods = [];
    page = 1;
    editFavoriteIds = [];
    isEditFavoriteIng = false;
  }

  // 获取用户收藏的下一页商品列表
  Future<void> loadNextPageUserFavoriteGoodsListFun() async {
    page = page + 1;
    await loadUserFavoriteGoodsListFun(page);
  }

  // 获取用户收藏的商品列表
  Future<void> loadUserFavoriteGoodsListFun(int pageId) async {}

  // 将用户信息存储到本地
  void setUserInfo(String json) async {}

  // 将本地保存的用户信息删除
  void removeUserInfoData() async {
    notifyListeners();
  }
}
