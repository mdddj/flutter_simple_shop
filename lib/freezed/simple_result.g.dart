// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleResult _$$_SimpleResultFromJson(Map<String, dynamic> json) =>
    _$_SimpleResult(
      message: json['message'] as String? ?? '',
      state: json['state'] as int? ?? 0,
      success: json['success'] as bool? ?? false,
      type: $enumDecodeNullable(_$ResultTypeEnumMap, json['type']) ??
          ResultType.none,
      data: json['data'],
    );

Map<String, dynamic> _$$_SimpleResultToJson(_$_SimpleResult instance) =>
    <String, dynamic>{
      'message': instance.message,
      'state': instance.state,
      'success': instance.success,
      'type': _$ResultTypeEnumMap[instance.type]!,
      'data': instance.data,
    };

const _$ResultTypeEnumMap = {
  ResultType.toast: 'Toast',
  ResultType.dialog: 'Dialog',
  ResultType.notice: 'Notice',
  ResultType.none: 'None',
  ResultType.finalToast: 'FinalToast',
  ResultType.finalDialog: 'FinalDialog',
};
