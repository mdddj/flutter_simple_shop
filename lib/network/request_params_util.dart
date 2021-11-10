// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:crypto/crypto.dart';

/// 网络请求工具类
class RequestParamsUtils{


  /// 根据request参数的key进行排序,并生成一个新的map返回
  /// 在参数上面添加了一个时间戳来进行验证
  static Map<String, String?> keySort(Map<String, String?> oldParamsMap) {
    var newParamsMap = <String, String?>{};
    var timeToken = DateTime.now().millisecondsSinceEpoch.toString();
    oldParamsMap['timeToken'] = timeToken; // 给参数加上时间戳
    var oldKeys = oldParamsMap.keys.toList();
    if (oldKeys.isEmpty) return newParamsMap;
    oldKeys.sort((a, b) {
      var al = a.codeUnits;
      var bl = b.codeUnits;
      for (var i = 0; i < al.length; i++) {
        if (bl.length <= i) return 1;
        if (al[i] > bl[i]) {
          return 1;
        } else if (al[i] < bl[i]) {
          return -1;
        }
      }
      return 0;
    });
    // print(oldKeys);
    for (var i = 0; i < oldKeys.length; i++) {
      newParamsMap[oldKeys[i]] = oldParamsMap[oldKeys[i]];
    }
    return newParamsMap;
  }

  /// 根据参数生成token
  /// 和服务器进行比对
  /// 如果验证不通过
  /// 则非法请求
  static String generateToken(Map<String, String?> params) {
    var value = json.encode(params);
    value = base64Encode(utf8.encode(value));
    value = encryptMD5(value);
    return value;
  }

  /// md5 加密
  static String encryptMD5(String data) {
    var content = const Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
}
