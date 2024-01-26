// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meituran_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeituanResult _$MeituanResultFromJson(Map<String, dynamic> json) {
  return _MeituanResult.fromJson(json);
}

/// @nodoc
mixin _$MeituanResult {
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'des')
  String get des => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'successful')
  bool get successful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeituanResultCopyWith<MeituanResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeituanResultCopyWith<$Res> {
  factory $MeituanResultCopyWith(
          MeituanResult value, $Res Function(MeituanResult) then) =
      _$MeituanResultCopyWithImpl<$Res, MeituanResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'des') String des,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'successful') bool successful});
}

/// @nodoc
class _$MeituanResultCopyWithImpl<$Res, $Val extends MeituanResult>
    implements $MeituanResultCopyWith<$Res> {
  _$MeituanResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? des = null,
    Object? status = null,
    Object? successful = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      des: null == des
          ? _value.des
          : des // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      successful: null == successful
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeituanResultImplCopyWith<$Res>
    implements $MeituanResultCopyWith<$Res> {
  factory _$$MeituanResultImplCopyWith(
          _$MeituanResultImpl value, $Res Function(_$MeituanResultImpl) then) =
      __$$MeituanResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'des') String des,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'successful') bool successful});
}

/// @nodoc
class __$$MeituanResultImplCopyWithImpl<$Res>
    extends _$MeituanResultCopyWithImpl<$Res, _$MeituanResultImpl>
    implements _$$MeituanResultImplCopyWith<$Res> {
  __$$MeituanResultImplCopyWithImpl(
      _$MeituanResultImpl _value, $Res Function(_$MeituanResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? des = null,
    Object? status = null,
    Object? successful = null,
  }) {
    return _then(_$MeituanResultImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      des: null == des
          ? _value.des
          : des // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      successful: null == successful
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeituanResultImpl extends _MeituanResult {
  const _$MeituanResultImpl(
      {@JsonKey(name: 'data') this.data = '',
      @JsonKey(name: 'des') this.des = '',
      @JsonKey(name: 'status') this.status = 0,
      @JsonKey(name: 'successful') this.successful = false})
      : super._();

  factory _$MeituanResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeituanResultImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final String data;
  @override
  @JsonKey(name: 'des')
  final String des;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'successful')
  final bool successful;

  @override
  String toString() {
    return 'MeituanResult(data: $data, des: $des, status: $status, successful: $successful)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeituanResultImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.des, des) || other.des == des) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successful, successful) ||
                other.successful == successful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, des, status, successful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeituanResultImplCopyWith<_$MeituanResultImpl> get copyWith =>
      __$$MeituanResultImplCopyWithImpl<_$MeituanResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeituanResultImplToJson(
      this,
    );
  }
}

abstract class _MeituanResult extends MeituanResult {
  const factory _MeituanResult(
          {@JsonKey(name: 'data') final String data,
          @JsonKey(name: 'des') final String des,
          @JsonKey(name: 'status') final int status,
          @JsonKey(name: 'successful') final bool successful}) =
      _$MeituanResultImpl;
  const _MeituanResult._() : super._();

  factory _MeituanResult.fromJson(Map<String, dynamic> json) =
      _$MeituanResultImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(name: 'des')
  String get des;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'successful')
  bool get successful;
  @override
  @JsonKey(ignore: true)
  _$$MeituanResultImplCopyWith<_$MeituanResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
