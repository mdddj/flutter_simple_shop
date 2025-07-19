// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileInfo {
  @JsonKey(name: 'absolutePath')
  String get absolutePath;
  @JsonKey(name: 'collect')
  bool get collect;
  @JsonKey(name: 'createDate')
  String get createDate;
  @JsonKey(name: 'fileName')
  String get fileName;
  @JsonKey(name: 'fileSize')
  int get fileSize;
  @JsonKey(name: 'fileType')
  String get fileType;
  @JsonKey(name: 'height')
  int get height;
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'intro')
  String get intro;
  @JsonKey(name: 'tagColor')
  String get tagColor;
  @JsonKey(name: 'updateDate')
  String get updateDate;
  @JsonKey(name: 'url')
  String get url;
  @JsonKey(name: 'width')
  int get width;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<FileInfo> get copyWith =>
      _$FileInfoCopyWithImpl<FileInfo>(this as FileInfo, _$identity);

  /// Serializes this FileInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileInfo &&
            (identical(other.absolutePath, absolutePath) ||
                other.absolutePath == absolutePath) &&
            (identical(other.collect, collect) || other.collect == collect) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.tagColor, tagColor) ||
                other.tagColor == tagColor) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      absolutePath,
      collect,
      createDate,
      fileName,
      fileSize,
      fileType,
      height,
      id,
      intro,
      tagColor,
      updateDate,
      url,
      width);

  @override
  String toString() {
    return 'FileInfo(absolutePath: $absolutePath, collect: $collect, createDate: $createDate, fileName: $fileName, fileSize: $fileSize, fileType: $fileType, height: $height, id: $id, intro: $intro, tagColor: $tagColor, updateDate: $updateDate, url: $url, width: $width)';
  }
}

/// @nodoc
abstract mixin class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) _then) =
      _$FileInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'absolutePath') String absolutePath,
      @JsonKey(name: 'collect') bool collect,
      @JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'fileName') String fileName,
      @JsonKey(name: 'fileSize') int fileSize,
      @JsonKey(name: 'fileType') String fileType,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'intro') String intro,
      @JsonKey(name: 'tagColor') String tagColor,
      @JsonKey(name: 'updateDate') String updateDate,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'width') int width});
}

/// @nodoc
class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._self, this._then);

  final FileInfo _self;
  final $Res Function(FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absolutePath = null,
    Object? collect = null,
    Object? createDate = null,
    Object? fileName = null,
    Object? fileSize = null,
    Object? fileType = null,
    Object? height = null,
    Object? id = null,
    Object? intro = null,
    Object? tagColor = null,
    Object? updateDate = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_self.copyWith(
      absolutePath: null == absolutePath
          ? _self.absolutePath
          : absolutePath // ignore: cast_nullable_to_non_nullable
              as String,
      collect: null == collect
          ? _self.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as bool,
      createDate: null == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileType: null == fileType
          ? _self.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      tagColor: null == tagColor
          ? _self.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _self.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FileInfo extends FileInfo {
  const _FileInfo(
      {@JsonKey(name: 'absolutePath') this.absolutePath = '',
      @JsonKey(name: 'collect') this.collect = false,
      @JsonKey(name: 'createDate') this.createDate = '',
      @JsonKey(name: 'fileName') this.fileName = '',
      @JsonKey(name: 'fileSize') this.fileSize = 0,
      @JsonKey(name: 'fileType') this.fileType = '',
      @JsonKey(name: 'height') this.height = 0,
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'intro') this.intro = '',
      @JsonKey(name: 'tagColor') this.tagColor = '',
      @JsonKey(name: 'updateDate') this.updateDate = '',
      @JsonKey(name: 'url') this.url = '',
      @JsonKey(name: 'width') this.width = 0})
      : super._();
  factory _FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);

  @override
  @JsonKey(name: 'absolutePath')
  final String absolutePath;
  @override
  @JsonKey(name: 'collect')
  final bool collect;
  @override
  @JsonKey(name: 'createDate')
  final String createDate;
  @override
  @JsonKey(name: 'fileName')
  final String fileName;
  @override
  @JsonKey(name: 'fileSize')
  final int fileSize;
  @override
  @JsonKey(name: 'fileType')
  final String fileType;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'intro')
  final String intro;
  @override
  @JsonKey(name: 'tagColor')
  final String tagColor;
  @override
  @JsonKey(name: 'updateDate')
  final String updateDate;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'width')
  final int width;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileInfo &&
            (identical(other.absolutePath, absolutePath) ||
                other.absolutePath == absolutePath) &&
            (identical(other.collect, collect) || other.collect == collect) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.tagColor, tagColor) ||
                other.tagColor == tagColor) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      absolutePath,
      collect,
      createDate,
      fileName,
      fileSize,
      fileType,
      height,
      id,
      intro,
      tagColor,
      updateDate,
      url,
      width);

  @override
  String toString() {
    return 'FileInfo(absolutePath: $absolutePath, collect: $collect, createDate: $createDate, fileName: $fileName, fileSize: $fileSize, fileType: $fileType, height: $height, id: $id, intro: $intro, tagColor: $tagColor, updateDate: $updateDate, url: $url, width: $width)';
  }
}

/// @nodoc
abstract mixin class _$FileInfoCopyWith<$Res>
    implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) _then) =
      __$FileInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'absolutePath') String absolutePath,
      @JsonKey(name: 'collect') bool collect,
      @JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'fileName') String fileName,
      @JsonKey(name: 'fileSize') int fileSize,
      @JsonKey(name: 'fileType') String fileType,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'intro') String intro,
      @JsonKey(name: 'tagColor') String tagColor,
      @JsonKey(name: 'updateDate') String updateDate,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'width') int width});
}

/// @nodoc
class __$FileInfoCopyWithImpl<$Res> implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(this._self, this._then);

  final _FileInfo _self;
  final $Res Function(_FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? absolutePath = null,
    Object? collect = null,
    Object? createDate = null,
    Object? fileName = null,
    Object? fileSize = null,
    Object? fileType = null,
    Object? height = null,
    Object? id = null,
    Object? intro = null,
    Object? tagColor = null,
    Object? updateDate = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_FileInfo(
      absolutePath: null == absolutePath
          ? _self.absolutePath
          : absolutePath // ignore: cast_nullable_to_non_nullable
              as String,
      collect: null == collect
          ? _self.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as bool,
      createDate: null == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileType: null == fileType
          ? _self.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      tagColor: null == tagColor
          ? _self.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _self.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
