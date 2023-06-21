import 'package:get_it/get_it.dart';

class UserApi {

  static String get userToken => GetIt.instance.get<UserApi>().token;

  static String? _token;
  set token(String? v)=> _token = v;
  String get token => _token ?? '';

}
