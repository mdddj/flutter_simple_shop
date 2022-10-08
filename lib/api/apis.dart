import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../index.dart';
import 'base.dart';


mixin ApiPageMixin on MyAppCoreApi {
  set page(int v)=>params['page'] = v;
  set pageSize(int v)=>params['pageSize']=v;
}

extension WrapJsonExt on WrapJson {
  void handle({ValueChanged<dynamic>? dataHandle}) {
    if(isSuccess){
      toast(message);
      final resultData = getValue('data');
      if(resultData!=null){
        dataHandle?.call(resultData);
      }
    }else{
      showIosDialog(message);
    }
  }
}

///收藏夹接口的前缀
const favoritesPrefix = '/api/user/favorites';

///添加到收藏夹接口
class FavoritesAddApi extends MyAppCoreApi {
  FavoritesAddApi() : super("$favoritesPrefix/save", httpMethod: HttpMethod.post);

  @Doc(message: "服务器发起请求,添加收藏")
  static Future<void> doRequeset(FavoriteModel favoriteModel) async {
    final r = await (FavoritesAddApi()).request(data: favoriteModel.getJson());
    r.handle();
  }
}

@Doc(message: '查询收藏列表api')
class FavoritesFindListApi extends MyAppCoreApi with ApiPageMixin {
  FavoritesFindListApi():super('$favoritesPrefix/list',showDetailLog: true);
  static Future<WrapJson> doRequest(int page) async {
    final api = FavoritesFindListApi()..page = page..pageSize=20;
    return await api.request(showDefaultLoading: false);
  }
}

///折淘客获取轮播图接口
class KZheTaokeApiWithCarousel extends MyAppCoreApi {
  KZheTaokeApiWithCarousel():super('/api/zhe/carousel-list');
}

///获取折淘客的APP key
class KZheTaokeApiWithAppkeyGet extends MyAppCoreApi{
  KZheTaokeApiWithAppkeyGet():super('/api/zhe/app-key');
  static Future<String> doRequest(Ref ref) async {
    final api = KZheTaokeApiWithAppkeyGet();
    final r = await api.request(showDefaultLoading: false);
    if(r.isSuccess.not){
      throw AppException(code: 10005, message: '获取折淘客APP失败,请重试');
    }
    final appKey = r.getString('data');
    ref.read(riverpodZhetaokeAppKeyState.notifier).state = appKey;
    return appKey ;
  }
}