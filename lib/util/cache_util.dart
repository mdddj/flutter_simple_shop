import 'package:dd_js_util/dd_js_util.dart';
import 'package:hive/hive.dart';



abstract class CacheBase<E> {
  final String boxName;

  CacheBase(this.boxName);

  Future<Box<E>> openBox() async {
   return Hive.openBox<E>(boxName);
  }

  Future<void> setValue(String key, E value) async {
    final box = await openBox();
    await box.put(key, value);
    box.close();
  }

  Future<E> getValue(String key, {E? defaultValue}) async {
    final box = await openBox();
    return (box.get(key,defaultValue: defaultValue))!;
  }
}

///jwt token 缓存
class TokenCache extends CacheBase<String> {
  TokenCache._() : super("token-cache");
  factory TokenCache() => instance;
  static TokenCache get instance => TokenCache._();

  final tokenKey = "u-token";
  void setToken(String token){
    setValue(tokenKey, token);
  }

  @Doc(message: '获取缓存token,如果不存在则返回空值')
  Future<String> _getToken() async {
    return (await getValue(tokenKey,defaultValue: ""));
  }
  Future<String> get userToken => _getToken();

}

class MyCache<E> extends CacheBase<E> {
  MyCache(super.boxName);
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
