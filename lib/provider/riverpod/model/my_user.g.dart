// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyUser _$$_MyUserFromJson(Map<String, dynamic> json) => _$_MyUser(
      id: json['id'] as String,
      loginNumber: json['loginNumber'] as String,
      nickName: json['nickName'] as String,
      email: json['email'] as String,
      picture: json['picture'] as String,
      phone: json['phone'] as String,
      type: json['type'] as int,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_MyUserToJson(_$_MyUser instance) => <String, dynamic>{
      'id': instance.id,
      'loginNumber': instance.loginNumber,
      'nickName': instance.nickName,
      'email': instance.email,
      'picture': instance.picture,
      'phone': instance.phone,
      'type': instance.type,
      'status': instance.status,
    };
