// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zhe_carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZheCarouselResult _$ZheCarouselResultFromJson(Map<String, dynamic> json) {
  return _ZheCarouselResult.fromJson(json);
}

/// @nodoc
mixin _$ZheCarouselResult {
  @JsonKey(name: 'content')
  List<ZheCarousel> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZheCarouselResultCopyWith<ZheCarouselResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZheCarouselResultCopyWith<$Res> {
  factory $ZheCarouselResultCopyWith(
          ZheCarouselResult value, $Res Function(ZheCarouselResult) then) =
      _$ZheCarouselResultCopyWithImpl<$Res, ZheCarouselResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<ZheCarousel> content,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$ZheCarouselResultCopyWithImpl<$Res, $Val extends ZheCarouselResult>
    implements $ZheCarouselResultCopyWith<$Res> {
  _$ZheCarouselResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ZheCarousel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZheCarouselResultImplCopyWith<$Res>
    implements $ZheCarouselResultCopyWith<$Res> {
  factory _$$ZheCarouselResultImplCopyWith(_$ZheCarouselResultImpl value,
          $Res Function(_$ZheCarouselResultImpl) then) =
      __$$ZheCarouselResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<ZheCarousel> content,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$ZheCarouselResultImplCopyWithImpl<$Res>
    extends _$ZheCarouselResultCopyWithImpl<$Res, _$ZheCarouselResultImpl>
    implements _$$ZheCarouselResultImplCopyWith<$Res> {
  __$$ZheCarouselResultImplCopyWithImpl(_$ZheCarouselResultImpl _value,
      $Res Function(_$ZheCarouselResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_$ZheCarouselResultImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ZheCarousel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZheCarouselResultImpl extends _ZheCarouselResult {
  const _$ZheCarouselResultImpl(
      {@JsonKey(name: 'content') final List<ZheCarousel> content = const [],
      @JsonKey(name: 'status') this.status = 0})
      : _content = content,
        super._();

  factory _$ZheCarouselResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZheCarouselResultImplFromJson(json);

  final List<ZheCarousel> _content;
  @override
  @JsonKey(name: 'content')
  List<ZheCarousel> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'ZheCarouselResult(content: $content, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZheCarouselResultImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZheCarouselResultImplCopyWith<_$ZheCarouselResultImpl> get copyWith =>
      __$$ZheCarouselResultImplCopyWithImpl<_$ZheCarouselResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZheCarouselResultImplToJson(
      this,
    );
  }
}

abstract class _ZheCarouselResult extends ZheCarouselResult {
  const factory _ZheCarouselResult(
      {@JsonKey(name: 'content') final List<ZheCarousel> content,
      @JsonKey(name: 'status') final int status}) = _$ZheCarouselResultImpl;
  const _ZheCarouselResult._() : super._();

  factory _ZheCarouselResult.fromJson(Map<String, dynamic> json) =
      _$ZheCarouselResultImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  List<ZheCarousel> get content;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$ZheCarouselResultImplCopyWith<_$ZheCarouselResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZheCarousel _$ZheCarouselFromJson(Map<String, dynamic> json) {
  return _ZheCarousel.fromJson(json);
}

/// @nodoc
mixin _$ZheCarousel {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  String get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'get_url')
  String get getUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic')
  String get pic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZheCarouselCopyWith<ZheCarousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZheCarouselCopyWith<$Res> {
  factory $ZheCarouselCopyWith(
          ZheCarousel value, $Res Function(ZheCarousel) then) =
      _$ZheCarouselCopyWithImpl<$Res, ZheCarousel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'get_url') String getUrl,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'pic') String pic});
}

/// @nodoc
class _$ZheCarouselCopyWithImpl<$Res, $Val extends ZheCarousel>
    implements $ZheCarouselCopyWith<$Res> {
  _$ZheCarouselCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dateTime = null,
    Object? getUrl = null,
    Object? name = null,
    Object? pic = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      getUrl: null == getUrl
          ? _value.getUrl
          : getUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZheCarouselImplCopyWith<$Res>
    implements $ZheCarouselCopyWith<$Res> {
  factory _$$ZheCarouselImplCopyWith(
          _$ZheCarouselImpl value, $Res Function(_$ZheCarouselImpl) then) =
      __$$ZheCarouselImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'get_url') String getUrl,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'pic') String pic});
}

/// @nodoc
class __$$ZheCarouselImplCopyWithImpl<$Res>
    extends _$ZheCarouselCopyWithImpl<$Res, _$ZheCarouselImpl>
    implements _$$ZheCarouselImplCopyWith<$Res> {
  __$$ZheCarouselImplCopyWithImpl(
      _$ZheCarouselImpl _value, $Res Function(_$ZheCarouselImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dateTime = null,
    Object? getUrl = null,
    Object? name = null,
    Object? pic = null,
  }) {
    return _then(_$ZheCarouselImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      getUrl: null == getUrl
          ? _value.getUrl
          : getUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZheCarouselImpl extends _ZheCarousel {
  const _$ZheCarouselImpl(
      {@JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'date_time') this.dateTime = '',
      @JsonKey(name: 'get_url') this.getUrl = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'pic') this.pic = ''})
      : super._();

  factory _$ZheCarouselImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZheCarouselImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'date_time')
  final String dateTime;
  @override
  @JsonKey(name: 'get_url')
  final String getUrl;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'pic')
  final String pic;

  @override
  String toString() {
    return 'ZheCarousel(code: $code, dateTime: $dateTime, getUrl: $getUrl, name: $name, pic: $pic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZheCarouselImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.getUrl, getUrl) || other.getUrl == getUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, dateTime, getUrl, name, pic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZheCarouselImplCopyWith<_$ZheCarouselImpl> get copyWith =>
      __$$ZheCarouselImplCopyWithImpl<_$ZheCarouselImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZheCarouselImplToJson(
      this,
    );
  }
}

abstract class _ZheCarousel extends ZheCarousel {
  const factory _ZheCarousel(
      {@JsonKey(name: 'code') final String code,
      @JsonKey(name: 'date_time') final String dateTime,
      @JsonKey(name: 'get_url') final String getUrl,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'pic') final String pic}) = _$ZheCarouselImpl;
  const _ZheCarousel._() : super._();

  factory _ZheCarousel.fromJson(Map<String, dynamic> json) =
      _$ZheCarouselImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'date_time')
  String get dateTime;
  @override
  @JsonKey(name: 'get_url')
  String get getUrl;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'pic')
  String get pic;
  @override
  @JsonKey(ignore: true)
  _$$ZheCarouselImplCopyWith<_$ZheCarouselImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
