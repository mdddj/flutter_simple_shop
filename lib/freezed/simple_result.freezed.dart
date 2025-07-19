// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleResult {
  @JsonKey(name: 'message')
  String get message;
  @JsonKey(name: 'state')
  int get state;
  @JsonKey(name: 'success')
  bool get success;
  @JsonKey(name: 'type')
  ResultType get type;
  @JsonKey(name: 'data')
  dynamic get data;

  /// Create a copy of SimpleResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleResultCopyWith<SimpleResult> get copyWith =>
      _$SimpleResultCopyWithImpl<SimpleResult>(
          this as SimpleResult, _$identity);

  /// Serializes this SimpleResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleResult &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, state, success, type,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SimpleResult(message: $message, state: $state, success: $success, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class $SimpleResultCopyWith<$Res> {
  factory $SimpleResultCopyWith(
          SimpleResult value, $Res Function(SimpleResult) _then) =
      _$SimpleResultCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'type') ResultType type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$SimpleResultCopyWithImpl<$Res> implements $SimpleResultCopyWith<$Res> {
  _$SimpleResultCopyWithImpl(this._self, this._then);

  final SimpleResult _self;
  final $Res Function(SimpleResult) _then;

  /// Create a copy of SimpleResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? state = null,
    Object? success = null,
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResultType,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SimpleResult extends SimpleResult {
  const _SimpleResult(
      {@JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'state') this.state = 0,
      @JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'type') this.type = ResultType.none,
      @JsonKey(name: 'data') this.data})
      : super._();
  factory _SimpleResult.fromJson(Map<String, dynamic> json) =>
      _$SimpleResultFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'state')
  final int state;
  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'type')
  final ResultType type;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  /// Create a copy of SimpleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SimpleResultCopyWith<_SimpleResult> get copyWith =>
      __$SimpleResultCopyWithImpl<_SimpleResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SimpleResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleResult &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, state, success, type,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SimpleResult(message: $message, state: $state, success: $success, type: $type, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SimpleResultCopyWith<$Res>
    implements $SimpleResultCopyWith<$Res> {
  factory _$SimpleResultCopyWith(
          _SimpleResult value, $Res Function(_SimpleResult) _then) =
      __$SimpleResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'type') ResultType type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$SimpleResultCopyWithImpl<$Res>
    implements _$SimpleResultCopyWith<$Res> {
  __$SimpleResultCopyWithImpl(this._self, this._then);

  final _SimpleResult _self;
  final $Res Function(_SimpleResult) _then;

  /// Create a copy of SimpleResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? state = null,
    Object? success = null,
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_SimpleResult(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResultType,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
