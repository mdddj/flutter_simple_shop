library api;

import 'package:dd_check_plugin/dd_check_plugin.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../freezed/add_favorites_params.dart';
import '../freezed/meituran_result.dart';
import '../freezed/report.dart';
import '../freezed/resource_category.dart';
import '../freezed/xb_result.dart';
import '../freezed/zhe_elm_model.dart';
import '../index.dart';
import 'model/email_register_params.dart';
import 'model/login_params.dart';
import 'new/part.dart';

part 'base.dart';
part 'report.dart';
part 'resource.dart';
part 'tkapi.dart';
part 'user.dart';
part 'zhe_api.dart';

mixin ApiPageMixin<T> on BaseApi<T> {
  set page(int v) => params['page'] = v;

  set pageSize(int v) => params['pageSize'] = v;
}

extension ApiExceptionEx on BaseApiException {
  String get message {
    return when(
      cancel: () => '请求取消',
      connectionTimeout: () => "服务繁忙,请稍后再试",
      sendTimeout: () => '服务繁忙,请稍后再试',
      receiveTimeout: () => '服务繁忙,请稍后再试',
      badCertificate: () => '证书错误',
      connectionError: () => '服务繁忙,请稍后再试',
      badResponse: (response, statusCode) {
        return "服务器异常";
      },
      businessException: (message, error, stackTrace) => message,
    );
  }
}

extension DartTypeModelEx on DartTypeModel {
  void throwBizError() {
    whenOrNull(
      json: (value) {
        if (value.json.getValue('success') == false) {
          throw BaseApiException.businessException(message: value['message']);
        }
      },
    );
  }

  DartTypeModel getData() {
    throwBizError();
    return whenOrNull(
          json: (value) {
            return DartTypeModel.createFrom(value['data']);
          },
        ) ??
        const DartTypeModel.nil();
  }
}

abstract class BaseApiPublic<T> extends BaseApi<T> {
  BaseApiPublic(super.url, {super.httpMethod});

  static BaseOptions get opt => BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      baseUrl: "${useEnv.host}:${useEnv.port}");

  @override
  ISet<Interceptor> get interceptions =>
      ISet([getIt.get<MyTokenInterceptor>()]);

  @override
  Future<BaseOptions> getOptions(param) async => opt;

  @override
  Future<Dio> getDio(BaseOptions baseOptions) async {
    final dio = await super.getDio(baseOptions);
    await DdCheckPlugin().init(dio,
        initHost: '192.168.0.104',
        port: 9998,
        timeOut: const Duration(milliseconds: 1500),
        projectName: 'shop',
        extend: [
          HiveToolManager(boxList: [MyCategoryCache()])
        ]);
    return dio;
  }
}

abstract class AppCoreApiWithT<T> extends BaseApiPublic<T> {
  AppCoreApiWithT(super.url, [HttpMethod httpMethod = HttpMethod.get])
      : super(httpMethod: httpMethod);

  @override
  T covertToModel(DartTypeModel data, RequestParams param) {
    return data.getData().whenOrNull(json: fromJson).ifNullThrowBizException();
  }

  T fromJson(Map<String, dynamic> json);
}

abstract class AppCoreApiWithListT<T> extends BaseApiPublic<List<T>> {
  AppCoreApiWithListT(super.url, HttpMethod httpMethod)
      : super(httpMethod: httpMethod);

  @override
  List<T> covertToModel(DartTypeModel data, RequestParams param) {
    return data
        .getData()
        .whenOrNull(
            list: (value) => List<T>.from(value.map(
                  (e) => fromJson(e as Map<String, dynamic>),
                )))
        .ifNullThrowBizException();
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

abstract class MyAppCoreApiWithWrapJson extends AppCoreApiWithT<WrapJson> {
  MyAppCoreApiWithWrapJson(super.url, [super.httpMethod]);

  @override
  WrapJson fromJson(Map<String, dynamic> json) {
    return WrapJson(json);
  }
}

///添加到收藏夹接口
class FavoritesAddApi extends MyAppCoreApiWithWrapJson {
  FavoritesAddApi() : super("$favoritesPrefix/save", HttpMethod.post);

  @Doc(message: "服务器发起请求,添加收藏")
  static Future<WrapJson> doRequeset(AddFavoritesParams params) async {
    final r =
        await (FavoritesAddApi()).request(RequestParams(data: params.toJson()));
    return r;
  }
}

@Doc(message: '查询收藏列表api')
class FavoritesFindListApi extends MyAppCoreApiWithWrapJson with ApiPageMixin {
  FavoritesFindListApi() : super('$favoritesPrefix/list');

  static Future<WrapJson> doRequest(int page) async {
    final api = FavoritesFindListApi()
      ..page = page
      ..pageSize = 20;
    return await api.request(const RequestParams(showDefaultLoading: false));
  }
}

//删除收藏
class FavoritesRemoveApi extends MyAppCoreApiWithWrapJson {
  FavoritesRemoveApi(int id)
      : super("$favoritesPrefix/remove", HttpMethod.post) {
    super.params.addAll({"idValue": id});
  }
}

///折淘客获取轮播图接口
class KZheTaokeApiWithCarousel extends MyAppCoreApiWithWrapJson {
  KZheTaokeApiWithCarousel() : super('/api/zhe/carousel-list');
}

///获取折淘客的APP key
class KZheTaokeApiWithAppkeyGet extends MyAppCoreApiWithWrapJson {
  KZheTaokeApiWithAppkeyGet() : super('/api/zhe/app-key');

  @Doc(message: '加载折淘客的APP Key')
  static Future<String> doRequest(Ref ref) async {
    final appkey = await MyNewApiByZhetaokeAppKey()
        .request(const RequestParams(showDefaultLoading: false));
    ref.read(riverpodZhetaokeAppKeyState.notifier).state = appkey;
    return appkey;
  }
}

///面基申请
class MeetRequestAdd extends MyAppCoreApiWithWrapJson {
  MeetRequestAdd() : super('/api/mianji/add', HttpMethod.post);
}

///查询面基申请记录
class SelectMeetListData extends MyAppCoreApiWithWrapJson with ApiPageMixin {
  SelectMeetListData() : super('/api/mianji/list');
}

///查询资源动态列表
class SelectMyRsourceListData extends MyAppCoreApiWithWrapJson
    with ApiPageMixin {
  SelectMyRsourceListData() : super("/api/app/resource/list");
}

///发布动态的接口
class MyResourceCreateApi extends MyAppCoreApiWithWrapJson {
  MyResourceCreateApi() : super('/api/app/resource/new', HttpMethod.post);
}

///获取邮箱验证码接口
class MyApiWithSendEmailValidCode extends MyAppCoreApiWithWrapJson {
  MyApiWithSendEmailValidCode()
      : super("/api/user-public/email-register", HttpMethod.post);
}

///邮箱注册接口
class MyApiWithEmailRegister extends MyAppCoreApiWithWrapJson {
  MyApiWithEmailRegister(EmailRegisterParams params)
      : super("/api/user-public/email-valid", HttpMethod.post) {
    super.params.addAll(params.toJson());
  }
}

///登录接口
class MyApiWithLogin extends MyAppCoreApiWithWrapJson {
  MyApiWithLogin(LoginParams params)
      : super(params.getApiPath, HttpMethod.post) {
    super.params.addAll(params.toJson());
  }
}

///美团领券
class MeituanCoupon extends MyAppCoreApiWithWrapJson {
  MeituanCoupon() : super('/api/zhe/mt/tg');
}

///开通会员接口
class MyOpenVipApi extends MyAppCoreApiWithWrapJson {
  MyOpenVipApi() : super("/api/open-vip", HttpMethod.post);
}

///用户发布的动态
class MyResourceListApi extends MyAppCoreApiWithWrapJson with ApiPageMixin {
  MyResourceListApi() : super('/api/app/resource/release');
}

///修改用户昵称
class MyUpdateUserNameApi extends MyAppCoreApiWithWrapJson {
  MyUpdateUserNameApi() : super('/api/user/update-username', HttpMethod.post);
}

///修改用户城市
class MyUpdateUserCityApi extends MyAppCoreApiWithWrapJson {
  MyUpdateUserCityApi() : super('/api/user/update-city', HttpMethod.post);
}

///修改用户城市
class MyUpdateUserJobApi extends MyAppCoreApiWithWrapJson {
  MyUpdateUserJobApi() : super('/api/user/update-job', HttpMethod.post);
}

///查找动态分类
class MyFindResourceCategoryApi extends AppCoreApiWithT<ResourceCategory> {
  MyFindResourceCategoryApi()
      : super(
          '/api/app/resource/find-resource-category',
        );

  Future<ResourceCategory> doRequest(String name) async {
    return await getIt.get<MyFindResourceCategoryApi>().request(
        R(data: <String, dynamic>{"name": name}, showDefaultLoading: false));
  }

  @override
  ResourceCategory fromJson(Map<String, dynamic> json) {
    return ResourceCategory.fromJson(json);
  }
}

///修改用户头像接口
class MyUpdateUserAvatarApi extends MyAppCoreApiWithWrapJson {
  MyUpdateUserAvatarApi() : super('/api/update-avatar', HttpMethod.post);
}

///删除用户动态接口
class MyDeleteUserResourceApi extends MyAppCoreApiWithWrapJson {
  MyDeleteUserResourceApi()
      : super('/api/app/resource/delete', HttpMethod.delete);
}

///获取用户的资源列表
class MyUserFilesApi extends MyAppCoreApiWithWrapJson {
  MyUserFilesApi() : super('/api/file/user', HttpMethod.get);
}
