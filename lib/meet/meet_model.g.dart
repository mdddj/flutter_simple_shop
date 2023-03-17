// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetModel _$$_MeetModelFromJson(Map<String, dynamic> json) => _$_MeetModel(
      aboutDiandian: json['aboutDiandian'] as String,
      age: json['age'] as int,
      id: json['id'] as int,
      location: json['location'] as String,
      mianjiInfo: json['mianjiInfo'] as String,
      name: json['name'] as String,
      soulCodeImage: json['soulCodeImage'] as String,
      soulName: json['soulName'] as String,
      toLocation: json['toLocation'] as String,
      state: json['state'] as int,
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const IListConst([])
          : IList<FileInfo>.fromJson(json['images'],
              (value) => FileInfo.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_MeetModelToJson(_$_MeetModel instance) =>
    <String, dynamic>{
      'aboutDiandian': instance.aboutDiandian,
      'age': instance.age,
      'id': instance.id,
      'location': instance.location,
      'mianjiInfo': instance.mianjiInfo,
      'name': instance.name,
      'soulCodeImage': instance.soulCodeImage,
      'soulName': instance.soulName,
      'toLocation': instance.toLocation,
      'state': instance.state,
      'user': instance.user,
      'images': instance.images.toJson(
        (value) => value,
      ),
    };
