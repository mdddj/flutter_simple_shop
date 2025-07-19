// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetModel _$MeetModelFromJson(Map<String, dynamic> json) => _MeetModel(
      aboutDiandian: json['aboutDiandian'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num).toInt(),
      location: json['location'] as String? ?? '',
      mianjiInfo: json['mianjiInfo'] as String? ?? '',
      name: json['name'] as String? ?? '',
      soulCodeImage: json['soulCodeImage'] as String? ?? '',
      soulName: json['soulName'] as String? ?? '',
      toLocation: json['toLocation'] as String? ?? '',
      createDate: json['createDate'] as String? ?? '',
      state: (json['state'] as num?)?.toInt() ?? 0,
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const IListConst([])
          : IList<FileInfo>.fromJson(json['images'],
              (value) => FileInfo.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$MeetModelToJson(_MeetModel instance) =>
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
      'createDate': instance.createDate,
      'state': instance.state,
      'user': instance.user,
      'images': instance.images.toJson(
        (value) => value,
      ),
    };
