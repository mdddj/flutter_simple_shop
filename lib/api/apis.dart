import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../common/extend/string.dart';
import '../freezed/add_favorites_params.dart';
import '../index.dart';
import 'base.dart';
import 'model/email_register_params.dart';
import 'model/get_email_valid_code.dart';
import 'model/login_params.dart';

mixin ApiPageMixin on MyAppCoreApi {
  set page(int v) => params['page'] = v;

  set pageSize(int v) => params['pageSize'] = v;
}

extension WrapJsonExt on WrapJson {
  void handle({ValueChanged<dynamic>? dataHandle, VoidCallback? success}) {
    if (isSuccess) {
      toast(message);
      final resultData = getValue('data');
      if (resultData != null) {
        dataHandle?.call(resultData);
      }
      success?.call();
    } else {
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
  static Future<void> doRequeset(AddFavoritesParams params, {VoidCallback? success}) async {
    final r = await (FavoritesAddApi()).request(RequestParams(data: params.toJson()));
    r.handle(success: success);
  }
}

@Doc(message: '查询收藏列表api')
class FavoritesFindListApi extends MyAppCoreApi with ApiPageMixin {
  FavoritesFindListApi() : super('$favoritesPrefix/list', showDetailLog: true);

  static Future<WrapJson> doRequest(int page) async {
    final api = FavoritesFindListApi()
      ..page = page
      ..pageSize = 20;
    return await api.request(const RequestParams(showDefaultLoading: false));
  }
}

//删除收藏
class FavoritesRemoveApi extends MyAppCoreApi {
  FavoritesRemoveApi(int id) : super("$favoritesPrefix/remove", httpMethod: HttpMethod.post) {
    super.params.addAll({"idValue": id});
  }
}

///折淘客获取轮播图接口
class KZheTaokeApiWithCarousel extends MyAppCoreApi {
  KZheTaokeApiWithCarousel() : super('/api/zhe/carousel-list');
}

///获取折淘客的APP key
class KZheTaokeApiWithAppkeyGet extends MyAppCoreApi {
  KZheTaokeApiWithAppkeyGet() : super('/api/zhe/app-key');

  static Future<String> doRequest(Ref ref) async {
    final cacehData = await TokenCache.instance.getValue('zhe-app-key', defaultValue: '');
    if (cacehData.isNotEmpty) {
      ref.read(riverpodZhetaokeAppKeyState.notifier).state = cacehData;
      return cacehData;
    }
    final api = KZheTaokeApiWithAppkeyGet();
    final r = await api.request(const RequestParams(showDefaultLoading: false));
    final appKey = r.getString('data');
    await appKey.saveToCaceh("zhe-app-key");
    return appKey;
  }
}

///面基申请
class MeetRequestAdd extends MyAppCoreApi {
  MeetRequestAdd() : super('/api/mianji/add', httpMethod: HttpMethod.post);
}

///查询面基申请记录
class SelectMeetListData extends MyAppCoreApi with ApiPageMixin {
  SelectMeetListData._() : super('/api/mianji/list');

  static SelectMeetListData get _instance => SelectMeetListData._();

  factory SelectMeetListData() => _instance;
}

///获取邮箱验证码接口
class MyApiWithSendEmailValidCode extends MyAppCoreApi {
  MyApiWithSendEmailValidCode(GetEmailValidCodeParams params) : super("/api/user-public/email-register", httpMethod: HttpMethod.post) {
    super.params.addAll(params.toJson());
  }

  @override
  bool get isRemoveUserToken => true;
}

///邮箱注册接口
class MyApiWithEmailRegister extends MyAppCoreApi {
  MyApiWithEmailRegister(EmailRegisterParams params) : super("/api/user-public/email-valid", httpMethod: HttpMethod.post) {
    super.params.addAll(params.toJson());
  }

  @override
  bool get isRemoveUserToken => true;
}

///登录接口
class MyApiWithLogin extends MyAppCoreApi {
  MyApiWithLogin(LoginParams params) : super("/api/user-public/login", httpMethod: HttpMethod.post) {
    super.params.addAll(params.toJson());
  }

  @override
  bool get isRemoveUserToken => true;
}
