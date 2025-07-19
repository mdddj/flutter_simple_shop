// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleResult _$SimpleResultFromJson(Map<String, dynamic> json) =>
    _SimpleResult(
      message: json['message'] as String? ?? '',
      state: (json['state'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      type: $enumDecodeNullable(_$ResultTypeEnumMap, json['type']) ??
          ResultType.none,
      data: json['data'],
    );

Map<String, dynamic> _$SimpleResultToJson(_SimpleResult instance) =>
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
