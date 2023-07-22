// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String get createtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  MyUser get user => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  IList<FileInfo> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'resourceId')
  int? get resourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'createTime') String createtime,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: "user") MyUser user,
      @JsonKey(name: "images") IList<FileInfo> images,
      @JsonKey(name: 'resourceId') int? resourceId});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? type = null,
    Object? createtime = null,
    Object? status = null,
    Object? comment = null,
    Object? user = null,
    Object? images = null,
    Object? resourceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createtime: null == createtime
          ? _value.createtime
          : createtime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<FileInfo>,
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'createTime') String createtime,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: "user") MyUser user,
      @JsonKey(name: "images") IList<FileInfo> images,
      @JsonKey(name: 'resourceId') int? resourceId});

  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? type = null,
    Object? createtime = null,
    Object? status = null,
    Object? comment = null,
    Object? user = null,
    Object? images = null,
    Object? resourceId = freezed,
  }) {
    return _then(_$_Report(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createtime: null == createtime
          ? _value.createtime
          : createtime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<FileInfo>,
      resourceId: freezed == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report extends _Report {
  const _$_Report(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'createTime') this.createtime = '',
      @JsonKey(name: 'status') this.status = 0,
      @JsonKey(name: 'comment') this.comment = '',
      @JsonKey(name: "user") this.user = anonymousUser,
      @JsonKey(name: "images") this.images = const IListConst([]),
      @JsonKey(name: 'resourceId') this.resourceId})
      : super._();

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'createTime')
  final String createtime;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(name: "user")
  final MyUser user;
  @override
  @JsonKey(name: "images")
  final IList<FileInfo> images;
  @override
  @JsonKey(name: 'resourceId')
  final int? resourceId;

  @override
  String toString() {
    return 'Report(id: $id, content: $content, type: $type, createtime: $createtime, status: $status, comment: $comment, user: $user, images: $images, resourceId: $resourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createtime, createtime) ||
                other.createtime == createtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      type,
      createtime,
      status,
      comment,
      user,
      const DeepCollectionEquality().hash(images),
      resourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(
      this,
    );
  }
}

abstract class _Report extends Report {
  const factory _Report(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'content') final String content,
      @JsonKey(name: 'type') final String type,
      @JsonKey(name: 'createTime') final String createtime,
      @JsonKey(name: 'status') final int status,
      @JsonKey(name: 'comment') final String comment,
      @JsonKey(name: "user") final MyUser user,
      @JsonKey(name: "images") final IList<FileInfo> images,
      @JsonKey(name: 'resourceId') final int? resourceId}) = _$_Report;
  const _Report._() : super._();

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'createTime')
  String get createtime;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: "user")
  MyUser get user;
  @override
  @JsonKey(name: "images")
  IList<FileInfo> get images;
  @override
  @JsonKey(name: 'resourceId')
  int? get resourceId;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}

AddReportParams _$AddReportParamsFromJson(Map<String, dynamic> json) {
  return _AddReportParams.fromJson(json);
}

/// @nodoc
mixin _$AddReportParams {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddReportParamsCopyWith<AddReportParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReportParamsCopyWith<$Res> {
  factory $AddReportParamsCopyWith(
          AddReportParams value, $Res Function(AddReportParams) then) =
      _$AddReportParamsCopyWithImpl<$Res, AddReportParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$AddReportParamsCopyWithImpl<$Res, $Val extends AddReportParams>
    implements $AddReportParamsCopyWith<$Res> {
  _$AddReportParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddReportParamsCopyWith<$Res>
    implements $AddReportParamsCopyWith<$Res> {
  factory _$$_AddReportParamsCopyWith(
          _$_AddReportParams value, $Res Function(_$_AddReportParams) then) =
      __$$_AddReportParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$_AddReportParamsCopyWithImpl<$Res>
    extends _$AddReportParamsCopyWithImpl<$Res, _$_AddReportParams>
    implements _$$_AddReportParamsCopyWith<$Res> {
  __$$_AddReportParamsCopyWithImpl(
      _$_AddReportParams _value, $Res Function(_$_AddReportParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$_AddReportParams(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddReportParams extends _AddReportParams {
  const _$_AddReportParams(
      {@JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'type') this.type = ''})
      : super._();

  factory _$_AddReportParams.fromJson(Map<String, dynamic> json) =>
      _$$_AddReportParamsFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'AddReportParams(content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReportParams &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReportParamsCopyWith<_$_AddReportParams> get copyWith =>
      __$$_AddReportParamsCopyWithImpl<_$_AddReportParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddReportParamsToJson(
      this,
    );
  }
}

abstract class _AddReportParams extends AddReportParams {
  const factory _AddReportParams(
      {@JsonKey(name: 'content') final String content,
      @JsonKey(name: 'type') final String type}) = _$_AddReportParams;
  const _AddReportParams._() : super._();

  factory _AddReportParams.fromJson(Map<String, dynamic> json) =
      _$_AddReportParams.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AddReportParamsCopyWith<_$_AddReportParams> get copyWith =>
      throw _privateConstructorUsedError;
}
