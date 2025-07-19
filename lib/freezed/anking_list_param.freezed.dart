// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anking_list_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnkingListParam {
  @JsonKey(name: 'rank')
  String get rank;
  @JsonKey(name: 'cid')
  String get cid;

  /// Create a copy of AnkingListParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnkingListParamCopyWith<AnkingListParam> get copyWith =>
      _$AnkingListParamCopyWithImpl<AnkingListParam>(
          this as AnkingListParam, _$identity);

  /// Serializes this AnkingListParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnkingListParam &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rank, cid);

  @override
  String toString() {
    return 'AnkingListParam(rank: $rank, cid: $cid)';
  }
}

/// @nodoc
abstract mixin class $AnkingListParamCopyWith<$Res> {
  factory $AnkingListParamCopyWith(
          AnkingListParam value, $Res Function(AnkingListParam) _then) =
      _$AnkingListParamCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'rank') String rank, @JsonKey(name: 'cid') String cid});
}

/// @nodoc
class _$AnkingListParamCopyWithImpl<$Res>
    implements $AnkingListParamCopyWith<$Res> {
  _$AnkingListParamCopyWithImpl(this._self, this._then);

  final AnkingListParam _self;
  final $Res Function(AnkingListParam) _then;

  /// Create a copy of AnkingListParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? cid = null,
  }) {
    return _then(_self.copyWith(
      rank: null == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AnkingListParam extends AnkingListParam {
  const _AnkingListParam(
      {@JsonKey(name: 'rank') this.rank = '',
      @JsonKey(name: 'cid') this.cid = ''})
      : super._();
  factory _AnkingListParam.fromJson(Map<String, dynamic> json) =>
      _$AnkingListParamFromJson(json);

  @override
  @JsonKey(name: 'rank')
  final String rank;
  @override
  @JsonKey(name: 'cid')
  final String cid;

  /// Create a copy of AnkingListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnkingListParamCopyWith<_AnkingListParam> get copyWith =>
      __$AnkingListParamCopyWithImpl<_AnkingListParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnkingListParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnkingListParam &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rank, cid);

  @override
  String toString() {
    return 'AnkingListParam(rank: $rank, cid: $cid)';
  }
}

/// @nodoc
abstract mixin class _$AnkingListParamCopyWith<$Res>
    implements $AnkingListParamCopyWith<$Res> {
  factory _$AnkingListParamCopyWith(
          _AnkingListParam value, $Res Function(_AnkingListParam) _then) =
      __$AnkingListParamCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rank') String rank, @JsonKey(name: 'cid') String cid});
}

/// @nodoc
class __$AnkingListParamCopyWithImpl<$Res>
    implements _$AnkingListParamCopyWith<$Res> {
  __$AnkingListParamCopyWithImpl(this._self, this._then);

  final _AnkingListParam _self;
  final $Res Function(_AnkingListParam) _then;

  /// Create a copy of AnkingListParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rank = null,
    Object? cid = null,
  }) {
    return _then(_AnkingListParam(
      rank: null == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      cid: null == cid
          ? _self.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
