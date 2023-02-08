import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';
part 'my_user.g.dart';


@freezed
class MyUser with _$MyUser{
  const factory MyUser({
    required int id,
    required String loginNumber,
    required String nickName,
    required String email,
    required String picture,
    required String phone,
    required int type,
    required int status,
  }) = _MyUser;
  factory MyUser.fromJson(Map<String,Object?> json)=>_$MyUserFromJson(json);
}

@freezed
class A with _$A {
  const factory A({required int a,String? b}) = _A;
}

class B {
  B({required String a,int? b});
}