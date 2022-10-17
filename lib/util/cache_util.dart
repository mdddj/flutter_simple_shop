import 'package:dd_js_util/dd_js_util.dart';
import 'package:hive/hive.dart';
import '../modals/app_setting_model.dart';


const appSettingHiveKey = 'app-local-setting';

abstract class CacheBase<E> {
  final String boxName;

  CacheBase(this.boxName);

  Future<Box<E>> openBox() async {
   return Hive.openBox<E>(boxName);
  }

  Future<void> setValue(String key, E value) async {
    final box = await openBox();
    await box.put(key, value);
  }

  Future<E> getValue(String key, {E? defaultValue}) async {
    final box = await openBox();
    return (box.get(key,defaultValue: defaultValue))!;
  }
}

///jwt token 缓存
class TokenCache extends CacheBase<String> {
  TokenCache() : super("token-cache");
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

///APP本地设置的缓存
class AppSeetingCache extends MyCache<AppLocalSettingModel>{
  static String themeKey = 'theme-setting';
  AppSeetingCache():super(appSettingHiveKey);
  Future<AppLocalSettingModel> get localSetting async  => await getValue(themeKey,defaultValue: AppLocalSettingModel.defaultSetting());
  Future<void> changeTheme(int index) async {
    final setting =await localSetting;
    kLog('更换主题:$index');
    setting.themeIndex = index;
    await setting.save();
  }
}


class CacheFactory {
  
  ///缓存工厂函数
  static T create<T extends CacheBase>({String? boxName}) {
    switch (T) {
      case TokenCache:
        return TokenCache() as T;
      case AppSeetingCache:
        return AppSeetingCache() as T;
      default:
        return MyCache(boxName ?? "DEFAULT") as T;
    }
  }
}
