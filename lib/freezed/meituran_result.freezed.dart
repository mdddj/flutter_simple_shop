// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meituran_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeituanResult {

@JsonKey(name: 'data') String get data;@JsonKey(name: 'des') String get des;@JsonKey(name: 'status') int get status;@JsonKey(name: 'successful') bool get successful;
/// Create a copy of MeituanResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeituanResultCopyWith<MeituanResult> get copyWith => _$MeituanResultCopyWithImpl<MeituanResult>(this as MeituanResult, _$identity);

  /// Serializes this MeituanResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeituanResult&&(identical(other.data, data) || other.data == data)&&(identical(other.des, des) || other.des == des)&&(identical(other.status, status) || other.status == status)&&(identical(other.successful, successful) || other.successful == successful));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,des,status,successful);

@override
String toString() {
  return 'MeituanResult(data: $data, des: $des, status: $status, successful: $successful)';
}


}

/// @nodoc
abstract mixin class $MeituanResultCopyWith<$Res>  {
  factory $MeituanResultCopyWith(MeituanResult value, $Res Function(MeituanResult) _then) = _$MeituanResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') String data,@JsonKey(name: 'des') String des,@JsonKey(name: 'status') int status,@JsonKey(name: 'successful') bool successful
});




}
/// @nodoc
class _$MeituanResultCopyWithImpl<$Res>
    implements $MeituanResultCopyWith<$Res> {
  _$MeituanResultCopyWithImpl(this._self, this._then);

  final MeituanResult _self;
  final $Res Function(MeituanResult) _then;

/// Create a copy of MeituanResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? des = null,Object? status = null,Object? successful = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,des: null == des ? _self.des : des // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,successful: null == successful ? _self.successful : successful // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeituanResult extends MeituanResult {
  const _MeituanResult({@JsonKey(name: 'data') this.data = '', @JsonKey(name: 'des') this.des = '', @JsonKey(name: 'status') this.status = 0, @JsonKey(name: 'successful') this.successful = false}): super._();
  factory _MeituanResult.fromJson(Map<String, dynamic> json) => _$MeituanResultFromJson(json);

@override@JsonKey(name: 'data') final  String data;
@override@JsonKey(name: 'des') final  String des;
@override@JsonKey(name: 'status') final  int status;
@override@JsonKey(name: 'successful') final  bool successful;

/// Create a copy of MeituanResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeituanResultCopyWith<_MeituanResult> get copyWith => __$MeituanResultCopyWithImpl<_MeituanResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeituanResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeituanResult&&(identical(other.data, data) || other.data == data)&&(identical(other.des, des) || other.des == des)&&(identical(other.status, status) || other.status == status)&&(identical(other.successful, successful) || other.successful == successful));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,des,status,successful);

@override
String toString() {
  return 'MeituanResult(data: $data, des: $des, status: $status, successful: $successful)';
}


}

/// @nodoc
abstract mixin class _$MeituanResultCopyWith<$Res> implements $MeituanResultCopyWith<$Res> {
  factory _$MeituanResultCopyWith(_MeituanResult value, $Res Function(_MeituanResult) _then) = __$MeituanResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') String data,@JsonKey(name: 'des') String des,@JsonKey(name: 'status') int status,@JsonKey(name: 'successful') bool successful
});




}
/// @nodoc
class __$MeituanResultCopyWithImpl<$Res>
    implements _$MeituanResultCopyWith<$Res> {
  __$MeituanResultCopyWithImpl(this._self, this._then);

  final _MeituanResult _self;
  final $Res Function(_MeituanResult) _then;

/// Create a copy of MeituanResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? des = null,Object? status = null,Object? successful = null,}) {
  return _then(_MeituanResult(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,des: null == des ? _self.des : des // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,successful: null == successful ? _self.successful : successful // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
