library api;

import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../freezed/add_favorites_params.dart';
import '../freezed/report.dart';
import '../freezed/resource_category.dart';
import '../index.dart';

import 'model/email_register_params.dart';
import 'model/login_params.dart';
part 'report.dart';
part 'base.dart';
part 'tkapi.dart';
part 'zhe_api.dart';
part 'resource.dart';
mixin ApiPageMixin on MyAppCoreApi {
  set page(int v) => params['page'] = v;

  set pageSize(int v) => params['pageSize'] = v;
}

abstract class AppCoreApiWithT<T> extends BaseApi {
  AppCoreApiWithT(String url, HttpMethod httpMethod)
      : super(url, httpMethod: httpMethod);
  @override
  Future<T> request([RequestParams? options]) async {
    final result = await super.request(options);
    if (result is Map<String, dynamic>) {
      final wrapJson = WrapJson(result);
      return fromJson(wrapJson.getMap("data"));
    }
    throw AppException(code: 509, message: "解析数据失败");
  }

  T fromJson(Map<String, dynamic> json);
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

  Map<String, dynamic> get getDataMap => getMap('data');
}

///收藏夹接口的前缀
const favoritesPrefix = '/api/user/favorites';

///添加到收藏夹接口
class FavoritesAddApi extends MyAppCoreApi {
  FavoritesAddApi()
      : super("$favoritesPrefix/save", httpMethod: HttpMethod.post);

  @Doc(message: "服务器发起请求,添加收藏")
  static Future<WrapJson> doRequeset(AddFavoritesParams params) async {
    final r =
        await (FavoritesAddApi()).request(RequestParams(data: params.toJson()));
    return r;
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
  FavoritesRemoveApi(int id)
      : super("$favoritesPrefix/remove", httpMethod: HttpMethod.post) {
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

  @Doc(message: '加载折淘客的APP Key')
  static Future<String> doRequest(Ref ref) async {
    final cacehData =
        await TokenCache.instance.getValue('zhe-app-key', defaultValue: '');
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
  SelectMeetListData() : super('/api/mianji/list');
}

///查询资源动态列表
class SelectMyRsourceListData extends MyAppCoreApi with ApiPageMixin {
  SelectMyRsourceListData() : super("/api/app/resource/list");
}

///发布动态的接口
class MyResourceCreateApi extends MyAppCoreApi {
  MyResourceCreateApi()
      : super('/api/app/resource/new', httpMethod: HttpMethod.post);
}

///获取邮箱验证码接口
class MyApiWithSendEmailValidCode extends MyAppCoreApi {
  MyApiWithSendEmailValidCode()
      : super("/api/user-public/email-register", httpMethod: HttpMethod.post);

  @override
  bool get isRemoveUserToken => true;
}

///邮箱注册接口
class MyApiWithEmailRegister extends MyAppCoreApi {
  MyApiWithEmailRegister(EmailRegisterParams params)
      : super("/api/user-public/email-valid", httpMethod: HttpMethod.post) {
    super.params.addAll(params.toJson());
  }

  @override
  bool get isRemoveUserToken => true;
}

///登录接口
class MyApiWithLogin extends MyAppCoreApi {
  MyApiWithLogin(LoginParams params)
      : super(params.getApiPath, httpMethod: HttpMethod.post) {
    super.params.addAll(params.toJson());
  }

  @override
  bool get isRemoveUserToken => true;
}

///美团领券
class MeituanCoupon extends MyAppCoreApi {
  MeituanCoupon() : super('/api/zhe/mt/tg');
}

///开通会员接口
class MyOpenVipApi extends MyAppCoreApi {
  MyOpenVipApi() : super("/api/open-vip", httpMethod: HttpMethod.post);
}

///用户发布的动态
class MyResourceListApi extends MyAppCoreApi with ApiPageMixin {
  MyResourceListApi() : super('/api/app/resource/release');
}

///修改用户昵称
class MyUpdateUserNameApi extends MyAppCoreApi {
  MyUpdateUserNameApi()
      : super('/api/user/update-username', httpMethod: HttpMethod.post);
}

///修改用户城市
class MyUpdateUserCityApi extends MyAppCoreApi {
  MyUpdateUserCityApi():super('/api/user/update-city',httpMethod: HttpMethod.post);
}

///修改用户城市
class MyUpdateUserJobApi extends MyAppCoreApi {
  MyUpdateUserJobApi():super('/api/user/update-job',httpMethod: HttpMethod.post);
}
///查找动态分类
class MyFindResourceCategoryApi extends MyAppCoreApi {
  MyFindResourceCategoryApi()
      : super('/api/app/resource/find-resource-category');
  Future<ResourceCategory> doRequest(String name) async {
    final result = await getIt
        .get<MyFindResourceCategoryApi>()
        .request(R(data: {"name": name}, showDefaultLoading: false));
    return ResourceCategory.fromJson(result.data);
  }
}

///修改用户头像接口
class MyUpdateUserAvatarApi extends MyAppCoreApi {
  MyUpdateUserAvatarApi()
      : super('/api/update-avatar', httpMethod: HttpMethod.post);
}

///删除用户动态接口
class MyDeleteUserResourceApi extends MyAppCoreApi {
  MyDeleteUserResourceApi()
      : super('/api/app/resource/delete', httpMethod: HttpMethod.delete);
}

///获取用户的资源列表
class MyUserFilesApi extends MyAppCoreApi {
  MyUserFilesApi():super('/api/file/user',httpMethod: HttpMethod.get);
}