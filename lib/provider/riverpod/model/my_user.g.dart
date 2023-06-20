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
      city: json['city'] as String? ?? "",
      job: json['job'] as String? ?? "",
      vip: $enumDecodeNullable(_$VipEnumMap, json['vip']) ?? Vip.none,
      openAiTokens: json['openAiTokens'] as num? ?? 0,
      openAiFlag: json['openAiFlag'] as bool? ?? false,
      enterprise: json['enterprise'] == null
          ? null
          : Enterprise.fromJson(json['enterprise'] as Map<String, dynamic>),
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
      'city': instance.city,
      'job': instance.job,
      'vip': _$VipEnumMap[instance.vip]!,
      'openAiTokens': instance.openAiTokens,
      'openAiFlag': instance.openAiFlag,
      'enterprise': instance.enterprise,
    };

const _$VipEnumMap = {
  Vip.none: 0,
  Vip.vip: 1,
  Vip.superVip: 2,
  Vip.specialVip: 3,
};

_$_Enterprise _$$_EnterpriseFromJson(Map<String, dynamic> json) =>
    _$_Enterprise(
      enable: json['enable'] as bool? ?? false,
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      profile: json['profile'] as String? ?? '',
      qq: json['qq'] as String? ?? '',
      wechat: json['wechat'] as String? ?? '',
    );

Map<String, dynamic> _$$_EnterpriseToJson(_$_Enterprise instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'profile': instance.profile,
      'qq': instance.qq,
      'wechat': instance.wechat,
    };
