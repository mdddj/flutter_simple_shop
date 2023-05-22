import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';
part 'my_user.g.dart';


@freezed
class MyUser with _$MyUser{
  const factory MyUser({
    required int id,
    @Default('') String loginNumber,
    @Default('') String username,
    @Default('') String email,
    @Default('未设置昵称') String nickName,
    @Default('') String picture,
    @Default('') String phone,
    @Default(-1) int type,
    @Default(-1) int status,
    @Default('') String loginTime,
    @Default(false) bool enabled,
    @Default(false) bool accountNonExpired,
    @Default(false) bool accountNonLocked,
    @Default(false) bool credentialsNonExpired,
    @Default(Vip.none) Vip vip
  }) = _MyUser;
  factory MyUser.fromJson(Map<String,Object?> json)=>_$MyUserFromJson(json);
}

@JsonEnum(valueField: 'vip')
enum Vip {
  @JsonValue(0)
  none,
  @JsonValue(1)
  vip,

  @JsonValue(2)
  superVip,

  @JsonValue(3)
  specialVip
}