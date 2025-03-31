// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyUser _$MyUserFromJson(Map<String, dynamic> json) => _MyUser(
  id: (json['id'] as num).toInt(),
  loginNumber: json['loginNumber'] as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
  nickName: json['nickName'] as String? ?? '未设置昵称',
  picture: json['picture'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  type: (json['type'] as num?)?.toInt() ?? -1,
  status: (json['status'] as num?)?.toInt() ?? -1,
  loginTime: json['loginTime'] as String? ?? '',
  enabled: json['enabled'] as bool? ?? false,
  accountNonExpired: json['accountNonExpired'] as bool? ?? false,
  accountNonLocked: json['accountNonLocked'] as bool? ?? false,
  credentialsNonExpired: json['credentialsNonExpired'] as bool? ?? false,
  city: json['city'] as String? ?? "",
  job: json['job'] as String? ?? "",
  vip: $enumDecodeNullable(_$VipEnumMap, json['vip']) ?? Vip.none,
  intro: json['intro'] as String? ?? '',
  openAiTokens: json['openAiTokens'] as num? ?? 0,
  openAiFlag: json['openAiFlag'] as bool? ?? false,
  relationId: json['relationId'] as String? ?? '',
  enterprise:
      json['enterprise'] == null
          ? null
          : Enterprise.fromJson(json['enterprise'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MyUserToJson(_MyUser instance) => <String, dynamic>{
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
  'intro': instance.intro,
  'openAiTokens': instance.openAiTokens,
  'openAiFlag': instance.openAiFlag,
  'relationId': instance.relationId,
  'enterprise': instance.enterprise,
};

const _$VipEnumMap = {
  Vip.none: 0,
  Vip.vip: 1,
  Vip.superVip: 2,
  Vip.specialVip: 3,
};

_Enterprise _$EnterpriseFromJson(Map<String, dynamic> json) => _Enterprise(
  enable: json['enable'] as bool? ?? false,
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  profile: json['profile'] as String? ?? '',
  qq: json['qq'] as String? ?? '',
  wechat: json['wechat'] as String? ?? '',
);

Map<String, dynamic> _$EnterpriseToJson(_Enterprise instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'profile': instance.profile,
      'qq': instance.qq,
      'wechat': instance.wechat,
    };
