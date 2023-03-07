// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyUser _$$_MyUserFromJson(Map<String, dynamic> json) => _$_MyUser(
      id: json['id'] as int,
      loginNumber: json['loginNumber'] as String? ?? '',
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      nickName: json['nickName'] as String? ?? '未设置昵称',
      picture: json['picture'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      type: json['type'] as int? ?? -1,
      status: json['status'] as int? ?? -1,
      loginTime: json['loginTime'] as String? ?? '',
      enabled: json['enabled'] as bool? ?? false,
      accountNonExpired: json['accountNonExpired'] as bool? ?? false,
      accountNonLocked: json['accountNonLocked'] as bool? ?? false,
      credentialsNonExpired: json['credentialsNonExpired'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MyUserToJson(_$_MyUser instance) => <String, dynamic>{
      'id': instance.id,
      'loginNumber': instance.loginNumber,
      'username': instance.username,
      'email': instance.email,
      'nickName': instance.nickName,
      'picture': instance.picture,
      'phone': instance.phone,
      'type': instance.type,
      'status': instance.status,
      'loginTime': instance.loginTime,
      'enabled': instance.enabled,
      'accountNonExpired': instance.accountNonExpired,
      'accountNonLocked': instance.accountNonLocked,
      'credentialsNonExpired': instance.credentialsNonExpired,
    };
