// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xb_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$XbData {
  @JsonKey(name: 'list')
  List<XbItem> get list;
  @JsonKey(name: 'pageId')
  int get pageId;
  @JsonKey(name: 'totalNum')
  int get totalNum;

  /// Create a copy of XbData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XbDataCopyWith<XbData> get copyWith =>
      _$XbDataCopyWithImpl<XbData>(this as XbData, _$identity);

  /// Serializes this XbData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XbData &&
            const DeepCollectionEquality().equals(other.list, list) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.totalNum, totalNum) ||
                other.totalNum == totalNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(list), pageId, totalNum);

  @override
  String toString() {
    return 'XbData(list: $list, pageId: $pageId, totalNum: $totalNum)';
  }
}

/// @nodoc
abstract mixin class $XbDataCopyWith<$Res> {
  factory $XbDataCopyWith(XbData value, $Res Function(XbData) _then) =
      _$XbDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<XbItem> list,
      @JsonKey(name: 'pageId') int pageId,
      @JsonKey(name: 'totalNum') int totalNum});
}

/// @nodoc
class _$XbDataCopyWithImpl<$Res> implements $XbDataCopyWith<$Res> {
  _$XbDataCopyWithImpl(this._self, this._then);

  final XbData _self;
  final $Res Function(XbData) _then;

  /// Create a copy of XbData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? pageId = null,
    Object? totalNum = null,
  }) {
    return _then(_self.copyWith(
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<XbItem>,
      pageId: null == pageId
          ? _self.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _self.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [XbData].
extension XbDataPatterns on XbData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_XbData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XbData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_XbData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbData():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_XbData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'list') List<XbItem> list,
            @JsonKey(name: 'pageId') int pageId,
            @JsonKey(name: 'totalNum') int totalNum)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XbData() when $default != null:
        return $default(_that.list, _that.pageId, _that.totalNum);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'list') List<XbItem> list,
            @JsonKey(name: 'pageId') int pageId,
            @JsonKey(name: 'totalNum') int totalNum)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbData():
        return $default(_that.list, _that.pageId, _that.totalNum);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'list') List<XbItem> list,
            @JsonKey(name: 'pageId') int pageId,
            @JsonKey(name: 'totalNum') int totalNum)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbData() when $default != null:
        return $default(_that.list, _that.pageId, _that.totalNum);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _XbData extends XbData {
  const _XbData(
      {@JsonKey(name: 'list') final List<XbItem> list = const [],
      @JsonKey(name: 'pageId') this.pageId = 0,
      @JsonKey(name: 'totalNum') this.totalNum = 0})
      : _list = list,
        super._();
  factory _XbData.fromJson(Map<String, dynamic> json) => _$XbDataFromJson(json);

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

  /// Create a copy of XbData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XbDataCopyWith<_XbData> get copyWith =>
      __$XbDataCopyWithImpl<_XbData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$XbDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XbData &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.totalNum, totalNum) ||
                other.totalNum == totalNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), pageId, totalNum);

  @override
  String toString() {
    return 'XbData(list: $list, pageId: $pageId, totalNum: $totalNum)';
  }
}

/// @nodoc
abstract mixin class _$XbDataCopyWith<$Res> implements $XbDataCopyWith<$Res> {
  factory _$XbDataCopyWith(_XbData value, $Res Function(_XbData) _then) =
      __$XbDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<XbItem> list,
      @JsonKey(name: 'pageId') int pageId,
      @JsonKey(name: 'totalNum') int totalNum});
}

/// @nodoc
class __$XbDataCopyWithImpl<$Res> implements _$XbDataCopyWith<$Res> {
  __$XbDataCopyWithImpl(this._self, this._then);

  final _XbData _self;
  final $Res Function(_XbData) _then;

  /// Create a copy of XbData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? list = null,
    Object? pageId = null,
    Object? totalNum = null,
  }) {
    return _then(_XbData(
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<XbItem>,
      pageId: null == pageId
          ? _self.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
      totalNum: null == totalNum
          ? _self.totalNum
          : totalNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$XbItem {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'contentApp')
  String get contentApp;
  @JsonKey(name: 'couponUrl')
  String get couponUrl;
  @JsonKey(name: 'createTime')
  String get createTime;
  @JsonKey(name: 'img')
  String get img;
  @JsonKey(name: 'itemId')
  String get itemId;
  @JsonKey(name: 'itemUrl')
  String get itemUrl;
  @JsonKey(name: 'msgId')
  String get msgId;
  @JsonKey(name: 'remark')
  String get remark;
  @JsonKey(name: 'source')
  String get source;
  @JsonKey(name: 'sourceType')
  String get sourceType;
  @JsonKey(name: 'tag')
  String get tag;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'updateTime')
  String get updateTime;

  /// Create a copy of XbItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XbItemCopyWith<XbItem> get copyWith =>
      _$XbItemCopyWithImpl<XbItem>(this as XbItem, _$identity);

  /// Serializes this XbItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XbItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'XbItem(content: $content, contentApp: $contentApp, couponUrl: $couponUrl, createTime: $createTime, img: $img, itemId: $itemId, itemUrl: $itemUrl, msgId: $msgId, remark: $remark, source: $source, sourceType: $sourceType, tag: $tag, title: $title, updateTime: $updateTime)';
  }
}

/// @nodoc
abstract mixin class $XbItemCopyWith<$Res> {
  factory $XbItemCopyWith(XbItem value, $Res Function(XbItem) _then) =
      _$XbItemCopyWithImpl;
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
class _$XbItemCopyWithImpl<$Res> implements $XbItemCopyWith<$Res> {
  _$XbItemCopyWithImpl(this._self, this._then);

  final XbItem _self;
  final $Res Function(XbItem) _then;

  /// Create a copy of XbItem
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentApp: null == contentApp
          ? _self.contentApp
          : contentApp // ignore: cast_nullable_to_non_nullable
              as String,
      couponUrl: null == couponUrl
          ? _self.couponUrl
          : couponUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemUrl: null == itemUrl
          ? _self.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: null == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _self.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [XbItem].
extension XbItemPatterns on XbItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_XbItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XbItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_XbItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbItem():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_XbItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'content') String content,
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
            @JsonKey(name: 'updateTime') String updateTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XbItem() when $default != null:
        return $default(
            _that.content,
            _that.contentApp,
            _that.couponUrl,
            _that.createTime,
            _that.img,
            _that.itemId,
            _that.itemUrl,
            _that.msgId,
            _that.remark,
            _that.source,
            _that.sourceType,
            _that.tag,
            _that.title,
            _that.updateTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'content') String content,
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
            @JsonKey(name: 'updateTime') String updateTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbItem():
        return $default(
            _that.content,
            _that.contentApp,
            _that.couponUrl,
            _that.createTime,
            _that.img,
            _that.itemId,
            _that.itemUrl,
            _that.msgId,
            _that.remark,
            _that.source,
            _that.sourceType,
            _that.tag,
            _that.title,
            _that.updateTime);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'content') String content,
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
            @JsonKey(name: 'updateTime') String updateTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XbItem() when $default != null:
        return $default(
            _that.content,
            _that.contentApp,
            _that.couponUrl,
            _that.createTime,
            _that.img,
            _that.itemId,
            _that.itemUrl,
            _that.msgId,
            _that.remark,
            _that.source,
            _that.sourceType,
            _that.tag,
            _that.title,
            _that.updateTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _XbItem extends XbItem {
  const _XbItem(
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
  factory _XbItem.fromJson(Map<String, dynamic> json) => _$XbItemFromJson(json);

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

  /// Create a copy of XbItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XbItemCopyWith<_XbItem> get copyWith =>
      __$XbItemCopyWithImpl<_XbItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$XbItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XbItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'XbItem(content: $content, contentApp: $contentApp, couponUrl: $couponUrl, createTime: $createTime, img: $img, itemId: $itemId, itemUrl: $itemUrl, msgId: $msgId, remark: $remark, source: $source, sourceType: $sourceType, tag: $tag, title: $title, updateTime: $updateTime)';
  }
}

/// @nodoc
abstract mixin class _$XbItemCopyWith<$Res> implements $XbItemCopyWith<$Res> {
  factory _$XbItemCopyWith(_XbItem value, $Res Function(_XbItem) _then) =
      __$XbItemCopyWithImpl;
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
class __$XbItemCopyWithImpl<$Res> implements _$XbItemCopyWith<$Res> {
  __$XbItemCopyWithImpl(this._self, this._then);

  final _XbItem _self;
  final $Res Function(_XbItem) _then;

  /// Create a copy of XbItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_XbItem(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentApp: null == contentApp
          ? _self.contentApp
          : contentApp // ignore: cast_nullable_to_non_nullable
              as String,
      couponUrl: null == couponUrl
          ? _self.couponUrl
          : couponUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _self.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemUrl: null == itemUrl
          ? _self.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      msgId: null == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _self.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
