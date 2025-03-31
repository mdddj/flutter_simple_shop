// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextModel _$TextModelFromJson(Map<String, dynamic> json) => _TextModel(
  context: json['context'] as String? ?? '',
  id: json['id'] as num? ?? 0,
  indexData:
      json['indexData'] == null
          ? const Indexdata()
          : Indexdata.fromJson(json['indexData']),
  intro: json['intro'] as String? ?? '',
  isEncryptionText: json['isEncryptionText'] as bool? ?? false,
  name: json['name'] as String? ?? '',
  updateDate: json['updateDate'] as String? ?? '',
  viewPassword: json['viewPassword'] as String? ?? '',
);

Map<String, dynamic> _$TextModelToJson(_TextModel instance) =>
    <String, dynamic>{
      'context': instance.context,
      'id': instance.id,
      'indexData': instance.indexData,
      'intro': instance.intro,
      'isEncryptionText': instance.isEncryptionText,
      'name': instance.name,
      'updateDate': instance.updateDate,
      'viewPassword': instance.viewPassword,
    };

_Indexdata _$IndexdataFromJson(Map<String, dynamic> json) => _Indexdata(
  content: json['content'] as String? ?? '',
  key: json['key'] as String? ?? '',
);

Map<String, dynamic> _$IndexdataToJson(_Indexdata instance) =>
    <String, dynamic>{'content': instance.content, 'key': instance.key};
