// Dart imports:

import 'dart:convert';

class FFConvert {
  FFConvert._();

  static T? convert<T extends Object?>(dynamic value) {
    if (value == null) {
      return null;
    }
    return json.decode(value.toString()) as T?;
  }
}

// 尝试类型装换 -- 列表类型
List<dynamic> tryCoverList(String result, String paramsKey) {
  if (result.isEmpty) return <dynamic>[];
  try {
    final map = jsonDecode(result);
    if (map[paramsKey] is List<dynamic>) {
      return map[paramsKey] as List<dynamic>;
    }
  } catch (_) {
    return <dynamic>[];
  }

  return <dynamic>[];
}
