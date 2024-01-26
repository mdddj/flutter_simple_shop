// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xb_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XbData _$XbDataFromJson(Map<String, dynamic> json) {
  return _XbData.fromJson(json);
}

/// @nodoc
mixin _$XbData {
  @JsonKey(name: 'list')
  List<XbItem> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageId')
  int get pageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalNum')
  int get totalNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XbDataCopyWith<XbData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XbDataCopyWith<$Res> {
  factory $XbDataCopyWith(XbData value, $Res Function(XbData) then) =
      _$XbDataCopyWithImpl<$Res, XbData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<XbItem> list,
      @JsonKey(name: 'pageId') int pageId,
      @JsonKey(name: 'totalNum') int totalNum});
}

/// @nodoc
class _$XbDataCopyWithImpl<$Res, $Val extends XbData>
    implements $XbDataCopyWith<$Res> {
  _$XbDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? pageId = null,
    Object? totalNum = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<XbItem>,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XbDataImplCopyWith<$Res> implements $XbDataCopyWith<$Res> {
  factory _$$XbDataImplCopyWith(
          _$XbDataImpl value, $Res Function(_$XbDataImpl) then) =
      __$$XbDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<XbItem> list,
      @JsonKey(name: 'pageId') int pageId,
      @JsonKey(name: 'totalNum') int totalNum});
}

/// @nodoc
class __$$XbDataImplCopyWithImpl<$Res>
    extends _$XbDataCopyWithImpl<$Res, _$XbDataImpl>
    implements _$$XbDataImplCopyWith<$Res> {
  __$$XbDataImplCopyWithImpl(
      _$XbDataImpl _value, $Res Function(_$XbDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? pageId = null,
    Object? totalNum = null,
  }) {
    return _then(_$XbDataImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<XbItem>,
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _value.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XbDataImpl extends _XbData {
  const _$XbDataImpl(
      {@JsonKey(name: 'list') final List<XbItem> list = const [],
      @JsonKey(name: 'pageId') this.pageId = 0,
      @JsonKey(name: 'totalNum') this.totalNum = 0})
      : _list = list,
        super._();

  factory _$XbDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$XbDataImplFromJson(json);

  final List<XbItem> _list;
  @override
  @JsonKey(name: 'list')
  List<XbItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'pageId')
  final int pageId;
  @override
  @JsonKey(name: 'totalNum')
  final int totalNum;

  @override
  String toString() {
    return 'XbData(list: $list, pageId: $pageId, totalNum: $totalNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XbDataImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.totalNum, totalNum) ||
                other.totalNum == totalNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), pageId, totalNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XbDataImplCopyWith<_$XbDataImpl> get copyWith =>
      __$$XbDataImplCopyWithImpl<_$XbDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XbDataImplToJson(
      this,
    );
  }
}

abstract class _XbData extends XbData {
  const factory _XbData(
      {@JsonKey(name: 'list') final List<XbItem> list,
      @JsonKey(name: 'pageId') final int pageId,
      @JsonKey(name: 'totalNum') final int totalNum}) = _$XbDataImpl;
  const _XbData._() : super._();

  factory _XbData.fromJson(Map<String, dynamic> json) = _$XbDataImpl.fromJson;

  @override
  @JsonKey(name: 'list')
  List<XbItem> get list;
  @override
  @JsonKey(name: 'pageId')
  int get pageId;
  @override
  @JsonKey(name: 'totalNum')
  int get totalNum;
  @override
  @JsonKey(ignore: true)
  _$$XbDataImplCopyWith<_$XbDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

XbItem _$XbItemFromJson(Map<String, dynamic> json) {
  return _XbItem.fromJson(json);
}

/// @nodoc
mixin _$XbItem {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentApp')
  String get contentApp => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponUrl')
  String get couponUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemId')
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemUrl')
  String get itemUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'msgId')
  String get msgId => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceType')
  String get sourceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag')
  String get tag => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XbItemCopyWith<XbItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XbItemCopyWith<$Res> {
  factory $XbItemCopyWith(XbItem value, $Res Function(XbItem) then) =
      _$XbItemCopyWithImpl<$Res, XbItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'contentApp') String contentApp,
      @JsonKey(name: 'couponUrl') String couponUrl,
      @JsonKey(name: 'createTime') String createTime,
      @JsonKey(name: 'img') String img,
      @JsonKey(name: 'itemId') String itemId,
      @JsonKey(name: 'itemUrl') String itemUrl,
      @JsonKey(name: 'msgId') String msgId,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'sourceType') String sourceType,
      @JsonKey(name: 'tag') String tag,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'updateTime') String updateTime});
}

/// @nodoc
class _$XbItemCopyWithImpl<$Res, $Val extends XbItem>
    implements $XbItemCopyWith<$Res> {
  _$XbItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? contentApp = null,
    Object? couponUrl = null,
    Object? createTime = null,
    Object? img = null,
    Object? itemId = null,
    Object? itemUrl = null,
    Object? msgId = null,
    Object? remark = null,
    Object? source = null,
    Object? sourceType = null,
    Object? tag = null,
    Object? title = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentApp: null == contentApp
          ? _value.contentApp
          : contentApp // ignore: cast_nullable_to_non_nullable
              as String,
      couponUrl: null == couponUrl
          ? _value.couponUrl
          : couponUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemUrl: null == itemUrl
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XbItemImplCopyWith<$Res> implements $XbItemCopyWith<$Res> {
  factory _$$XbItemImplCopyWith(
          _$XbItemImpl value, $Res Function(_$XbItemImpl) then) =
      __$$XbItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'contentApp') String contentApp,
      @JsonKey(name: 'couponUrl') String couponUrl,
      @JsonKey(name: 'createTime') String createTime,
      @JsonKey(name: 'img') String img,
      @JsonKey(name: 'itemId') String itemId,
      @JsonKey(name: 'itemUrl') String itemUrl,
      @JsonKey(name: 'msgId') String msgId,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'sourceType') String sourceType,
      @JsonKey(name: 'tag') String tag,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'updateTime') String updateTime});
}

/// @nodoc
class __$$XbItemImplCopyWithImpl<$Res>
    extends _$XbItemCopyWithImpl<$Res, _$XbItemImpl>
    implements _$$XbItemImplCopyWith<$Res> {
  __$$XbItemImplCopyWithImpl(
      _$XbItemImpl _value, $Res Function(_$XbItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? contentApp = null,
    Object? couponUrl = null,
    Object? createTime = null,
    Object? img = null,
    Object? itemId = null,
    Object? itemUrl = null,
    Object? msgId = null,
    Object? remark = null,
    Object? source = null,
    Object? sourceType = null,
    Object? tag = null,
    Object? title = null,
    Object? updateTime = null,
  }) {
    return _then(_$XbItemImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentApp: null == contentApp
          ? _value.contentApp
          : contentApp // ignore: cast_nullable_to_non_nullable
              as String,
      couponUrl: null == couponUrl
          ? _value.couponUrl
          : couponUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemUrl: null == itemUrl
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XbItemImpl extends _XbItem {
  const _$XbItemImpl(
      {@JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'contentApp') this.contentApp = '',
      @JsonKey(name: 'couponUrl') this.couponUrl = '',
      @JsonKey(name: 'createTime') this.createTime = '',
      @JsonKey(name: 'img') this.img = '',
      @JsonKey(name: 'itemId') this.itemId = '',
      @JsonKey(name: 'itemUrl') this.itemUrl = '',
      @JsonKey(name: 'msgId') this.msgId = '',
      @JsonKey(name: 'remark') this.remark = '',
      @JsonKey(name: 'source') this.source = '',
      @JsonKey(name: 'sourceType') this.sourceType = '',
      @JsonKey(name: 'tag') this.tag = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'updateTime') this.updateTime = ''})
      : super._();

  factory _$XbItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$XbItemImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'contentApp')
  final String contentApp;
  @override
  @JsonKey(name: 'couponUrl')
  final String couponUrl;
  @override
  @JsonKey(name: 'createTime')
  final String createTime;
  @override
  @JsonKey(name: 'img')
  final String img;
  @override
  @JsonKey(name: 'itemId')
  final String itemId;
  @override
  @JsonKey(name: 'itemUrl')
  final String itemUrl;
  @override
  @JsonKey(name: 'msgId')
  final String msgId;
  @override
  @JsonKey(name: 'remark')
  final String remark;
  @override
  @JsonKey(name: 'source')
  final String source;
  @override
  @JsonKey(name: 'sourceType')
  final String sourceType;
  @override
  @JsonKey(name: 'tag')
  final String tag;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'updateTime')
  final String updateTime;

  @override
  String toString() {
    return 'XbItem(content: $content, contentApp: $contentApp, couponUrl: $couponUrl, createTime: $createTime, img: $img, itemId: $itemId, itemUrl: $itemUrl, msgId: $msgId, remark: $remark, source: $source, sourceType: $sourceType, tag: $tag, title: $title, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XbItemImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.contentApp, contentApp) ||
                other.contentApp == contentApp) &&
            (identical(other.couponUrl, couponUrl) ||
                other.couponUrl == couponUrl) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemUrl, itemUrl) || other.itemUrl == itemUrl) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      contentApp,
      couponUrl,
      createTime,
      img,
      itemId,
      itemUrl,
      msgId,
      remark,
      source,
      sourceType,
      tag,
      title,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XbItemImplCopyWith<_$XbItemImpl> get copyWith =>
      __$$XbItemImplCopyWithImpl<_$XbItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XbItemImplToJson(
      this,
    );
  }
}

abstract class _XbItem extends XbItem {
  const factory _XbItem(
      {@JsonKey(name: 'content') final String content,
      @JsonKey(name: 'contentApp') final String contentApp,
      @JsonKey(name: 'couponUrl') final String couponUrl,
      @JsonKey(name: 'createTime') final String createTime,
      @JsonKey(name: 'img') final String img,
      @JsonKey(name: 'itemId') final String itemId,
      @JsonKey(name: 'itemUrl') final String itemUrl,
      @JsonKey(name: 'msgId') final String msgId,
      @JsonKey(name: 'remark') final String remark,
      @JsonKey(name: 'source') final String source,
      @JsonKey(name: 'sourceType') final String sourceType,
      @JsonKey(name: 'tag') final String tag,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'updateTime') final String updateTime}) = _$XbItemImpl;
  const _XbItem._() : super._();

  factory _XbItem.fromJson(Map<String, dynamic> json) = _$XbItemImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'contentApp')
  String get contentApp;
  @override
  @JsonKey(name: 'couponUrl')
  String get couponUrl;
  @override
  @JsonKey(name: 'createTime')
  String get createTime;
  @override
  @JsonKey(name: 'img')
  String get img;
  @override
  @JsonKey(name: 'itemId')
  String get itemId;
  @override
  @JsonKey(name: 'itemUrl')
  String get itemUrl;
  @override
  @JsonKey(name: 'msgId')
  String get msgId;
  @override
  @JsonKey(name: 'remark')
  String get remark;
  @override
  @JsonKey(name: 'source')
  String get source;
  @override
  @JsonKey(name: 'sourceType')
  String get sourceType;
  @override
  @JsonKey(name: 'tag')
  String get tag;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'updateTime')
  String get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$XbItemImplCopyWith<_$XbItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
