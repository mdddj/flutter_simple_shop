// Dart imports:
import 'dart:convert';

// Package imports:
// Flutter imports:
import 'package:dataoke_sdk/network/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

// Project imports:
import '../controller/app_controller.dart';
import '../modals/user.dart';
import 'utils.dart';

abstract class ApiService {
  /// 登入
  /// 返回 :  true 表示成功
  Future<bool> login(String username, String password);

  // 接口访问失败返回
  void errorHandle(int? code, String? msg);

  /// 获取用户相关信息
  Future<User?> getUser(String token);
}

/// 接口
class Api extends ApiService {
  final request = DdTaokeUtil();

  /// 登录接口
  /// 如果登入成功,服务器会返回jwt 鉴权token ,token一般30天内有效
  /// 可以通过token获取用户相关信息
  /// 函数返回bool类型,true表示成功
  @override
  Future<bool> login(String username, String password,
      {ValueChanged<String>? tokenHandle,
      ValueChanged<String>? loginFail}) async {
    final result = await request.post('/api/user-public/login',
        data: {'loginNumber': username, 'password': password},
        error: (int code, String msg, data) {
      loginFail?.call(msg);
    }, isTaokeApi: false);
    if (result.isNotEmpty) {
      Get.log('登录成功:$result');
      tokenHandle?.call(result);
      return true;
    }
    return false;
  }

  @override
  Future<User?> getUser(String token) async {
    final result = await request.get('/api/get-user-by-token',
        data: {'token': token},
        onStart: AppController.find.addAuthDetail,
        isTaokeApi: false);

    if (result.isNotEmpty) {
      try {
        return User.fromJson(jsonDecode(result));
      } catch (e) {
        Logger().d("用户数据解析失败:$e");
      }
    }
    return null;
  }

  @override
  void errorHandle(int? code, String? msg) {
    if (msg != null) {
      utils.showMessage(msg);
    }
  }

  Future<String> post(String url, Map<String, dynamic> data) async {
    return request.post(url,
        data: data,
        isTaokeApi: false,
        onStart: AppController.find.addAuthDetail);
  }

  Future<String> get(String url,
      {Map<String, dynamic>? data,
      ResultDataMapHandle? mapHandle,
      ApiError? error,
      ValueChanged<dynamic>? otherDataHandle}) async {
    return request.get(url,
        data: data,
        mapData: mapHandle,
        error: error,
        isTaokeApi: false,
        otherDataHandle: otherDataHandle);
  }
}
