import 'package:dd_js_util/api/base.dart';
import 'package:hive/hive.dart';

abstract class CacheBase {
  final String boxName;

  CacheBase(this.boxName);

  Future<Box> openBox();

  Future<void> setValue(String key, String value);

  Future<dynamic> getValue(String key, {dynamic defaultValue});
}

///jwt token 缓存
class TokenCache extends CacheBase {
  TokenCache() : super("token-cache");

  final tokenKey = "u-token";

  @override
  getValue(String key, {dynamic defaultValue}) async  {
  return (await openBox()).get(key, defaultValue: defaultValue);
  }

  @override
  Future<Box> openBox() async {
    return await Hive.openBox(boxName);
  }

  @override
  Future<void> setValue(String key, String value)  async {
    (await openBox()).put(key, value);
  }

  void setToken(String token){
    setValue(tokenKey, token);
  }

  @Doc(message: '获取缓存token,如果不存在则返回空值')
  Future<String> _getToken() async {
    return await getValue(tokenKey,defaultValue: "");
  }

  Future<String> get userToken => _getToken();

}

class MyCache extends CacheBase {
  MyCache(String boxName) : super(boxName);

  @override
  Future<dynamic> getValue(String key, {defaultValue}) async {
    return (await openBox()).get(key, defaultValue: defaultValue);
  }

  @override
  Future<Box> openBox() async {
    return await Hive.openBox(boxName);
  }

  @override
  Future<void> setValue(String key, String value) async  {
    (await openBox()).put(key, value);
  }
}


class CacheFactory {
  
  ///缓存工厂函数
  static T create<T extends CacheBase>({String? boxName}) {
    switch (T) {
      case TokenCache:
        return TokenCache() as T;
      default:
        return MyCache(boxName ?? "DEFAULT") as T;
    }
  }
}
