// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextModel {
  @JsonKey(name: 'context')
  String get context;
  @JsonKey(name: 'id')
  num get id;
  @JsonKey(name: 'indexData')
  Indexdata get indexData;
  @JsonKey(name: 'intro')
  String get intro;
  @JsonKey(name: 'isEncryptionText')
  bool get isEncryptionText;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'updateDate')
  String get updateDate;
  @JsonKey(name: 'viewPassword')
  String get viewPassword;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextModelCopyWith<TextModel> get copyWith =>
      _$TextModelCopyWithImpl<TextModel>(this as TextModel, _$identity);

  /// Serializes this TextModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextModel &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indexData, indexData) ||
                other.indexData == indexData) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.isEncryptionText, isEncryptionText) ||
                other.isEncryptionText == isEncryptionText) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.viewPassword, viewPassword) ||
                other.viewPassword == viewPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, context, id, indexData, intro,
      isEncryptionText, name, updateDate, viewPassword);

  @override
  String toString() {
    return 'TextModel(context: $context, id: $id, indexData: $indexData, intro: $intro, isEncryptionText: $isEncryptionText, name: $name, updateDate: $updateDate, viewPassword: $viewPassword)';
  }
}

/// @nodoc
abstract mixin class $TextModelCopyWith<$Res> {
  factory $TextModelCopyWith(TextModel value, $Res Function(TextModel) _then) =
      _$TextModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'context') String context,
      @JsonKey(name: 'id') num id,
      @JsonKey(name: 'indexData') Indexdata indexData,
      @JsonKey(name: 'intro') String intro,
      @JsonKey(name: 'isEncryptionText') bool isEncryptionText,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'updateDate') String updateDate,
      @JsonKey(name: 'viewPassword') String viewPassword});

  $IndexdataCopyWith<$Res> get indexData;
}

/// @nodoc
class _$TextModelCopyWithImpl<$Res> implements $TextModelCopyWith<$Res> {
  _$TextModelCopyWithImpl(this._self, this._then);

  final TextModel _self;
  final $Res Function(TextModel) _then;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
    Object? indexData = null,
    Object? intro = null,
    Object? isEncryptionText = null,
    Object? name = null,
    Object? updateDate = null,
    Object? viewPassword = null,
  }) {
    return _then(_self.copyWith(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      indexData: null == indexData
          ? _self.indexData
          : indexData // ignore: cast_nullable_to_non_nullable
              as Indexdata,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      isEncryptionText: null == isEncryptionText
          ? _self.isEncryptionText
          : isEncryptionText // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _self.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      viewPassword: null == viewPassword
          ? _self.viewPassword
          : viewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndexdataCopyWith<$Res> get indexData {
    return $IndexdataCopyWith<$Res>(_self.indexData, (value) {
      return _then(_self.copyWith(indexData: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TextModel].
extension TextModelPatterns on TextModel {
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
    TResult Function(_TextModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextModel() when $default != null:
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
    TResult Function(_TextModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextModel():
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
    TResult? Function(_TextModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextModel() when $default != null:
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
            @JsonKey(name: 'context') String context,
            @JsonKey(name: 'id') num id,
            @JsonKey(name: 'indexData') Indexdata indexData,
            @JsonKey(name: 'intro') String intro,
            @JsonKey(name: 'isEncryptionText') bool isEncryptionText,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'updateDate') String updateDate,
            @JsonKey(name: 'viewPassword') String viewPassword)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TextModel() when $default != null:
        return $default(
            _that.context,
            _that.id,
            _that.indexData,
            _that.intro,
            _that.isEncryptionText,
            _that.name,
            _that.updateDate,
            _that.viewPassword);
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
            @JsonKey(name: 'context') String context,
            @JsonKey(name: 'id') num id,
            @JsonKey(name: 'indexData') Indexdata indexData,
            @JsonKey(name: 'intro') String intro,
            @JsonKey(name: 'isEncryptionText') bool isEncryptionText,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'updateDate') String updateDate,
            @JsonKey(name: 'viewPassword') String viewPassword)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextModel():
        return $default(
            _that.context,
            _that.id,
            _that.indexData,
            _that.intro,
            _that.isEncryptionText,
            _that.name,
            _that.updateDate,
            _that.viewPassword);
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
            @JsonKey(name: 'context') String context,
            @JsonKey(name: 'id') num id,
            @JsonKey(name: 'indexData') Indexdata indexData,
            @JsonKey(name: 'intro') String intro,
            @JsonKey(name: 'isEncryptionText') bool isEncryptionText,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'updateDate') String updateDate,
            @JsonKey(name: 'viewPassword') String viewPassword)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TextModel() when $default != null:
        return $default(
            _that.context,
            _that.id,
            _that.indexData,
            _that.intro,
            _that.isEncryptionText,
            _that.name,
            _that.updateDate,
            _that.viewPassword);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TextModel extends TextModel {
  const _TextModel(
      {@JsonKey(name: 'context') this.context = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'indexData') this.indexData = const Indexdata(),
      @JsonKey(name: 'intro') this.intro = '',
      @JsonKey(name: 'isEncryptionText') this.isEncryptionText = false,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'updateDate') this.updateDate = '',
      @JsonKey(name: 'viewPassword') this.viewPassword = ''})
      : super._();
  factory _TextModel.fromJson(Map<String, dynamic> json) =>
      _$TextModelFromJson(json);

  @override
  @JsonKey(name: 'context')
  final String context;
  @override
  @JsonKey(name: 'id')
  final num id;
  @override
  @JsonKey(name: 'indexData')
  final Indexdata indexData;
  @override
  @JsonKey(name: 'intro')
  final String intro;
  @override
  @JsonKey(name: 'isEncryptionText')
  final bool isEncryptionText;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'updateDate')
  final String updateDate;
  @override
  @JsonKey(name: 'viewPassword')
  final String viewPassword;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TextModelCopyWith<_TextModel> get copyWith =>
      __$TextModelCopyWithImpl<_TextModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextModel &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indexData, indexData) ||
                other.indexData == indexData) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.isEncryptionText, isEncryptionText) ||
                other.isEncryptionText == isEncryptionText) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.viewPassword, viewPassword) ||
                other.viewPassword == viewPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, context, id, indexData, intro,
      isEncryptionText, name, updateDate, viewPassword);

  @override
  String toString() {
    return 'TextModel(context: $context, id: $id, indexData: $indexData, intro: $intro, isEncryptionText: $isEncryptionText, name: $name, updateDate: $updateDate, viewPassword: $viewPassword)';
  }
}

/// @nodoc
abstract mixin class _$TextModelCopyWith<$Res>
    implements $TextModelCopyWith<$Res> {
  factory _$TextModelCopyWith(
          _TextModel value, $Res Function(_TextModel) _then) =
      __$TextModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'context') String context,
      @JsonKey(name: 'id') num id,
      @JsonKey(name: 'indexData') Indexdata indexData,
      @JsonKey(name: 'intro') String intro,
      @JsonKey(name: 'isEncryptionText') bool isEncryptionText,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'updateDate') String updateDate,
      @JsonKey(name: 'viewPassword') String viewPassword});

  @override
  $IndexdataCopyWith<$Res> get indexData;
}

/// @nodoc
class __$TextModelCopyWithImpl<$Res> implements _$TextModelCopyWith<$Res> {
  __$TextModelCopyWithImpl(this._self, this._then);

  final _TextModel _self;
  final $Res Function(_TextModel) _then;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? context = null,
    Object? id = null,
    Object? indexData = null,
    Object? intro = null,
    Object? isEncryptionText = null,
    Object? name = null,
    Object? updateDate = null,
    Object? viewPassword = null,
  }) {
    return _then(_TextModel(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      indexData: null == indexData
          ? _self.indexData
          : indexData // ignore: cast_nullable_to_non_nullable
              as Indexdata,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      isEncryptionText: null == isEncryptionText
          ? _self.isEncryptionText
          : isEncryptionText // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _self.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      viewPassword: null == viewPassword
          ? _self.viewPassword
          : viewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndexdataCopyWith<$Res> get indexData {
    return $IndexdataCopyWith<$Res>(_self.indexData, (value) {
      return _then(_self.copyWith(indexData: value));
    });
  }
}

/// @nodoc
mixin _$Indexdata {
  @JsonKey(name: 'content')
  String get content;
  @JsonKey(name: 'key')
  String get key;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IndexdataCopyWith<Indexdata> get copyWith =>
      _$IndexdataCopyWithImpl<Indexdata>(this as Indexdata, _$identity);

  /// Serializes this Indexdata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Indexdata &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, key);

  @override
  String toString() {
    return 'Indexdata(content: $content, key: $key)';
  }
}

/// @nodoc
abstract mixin class $IndexdataCopyWith<$Res> {
  factory $IndexdataCopyWith(Indexdata value, $Res Function(Indexdata) _then) =
      _$IndexdataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'key') String key});
}

/// @nodoc
class _$IndexdataCopyWithImpl<$Res> implements $IndexdataCopyWith<$Res> {
  _$IndexdataCopyWithImpl(this._self, this._then);

  final Indexdata _self;
  final $Res Function(Indexdata) _then;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Indexdata].
extension IndexdataPatterns on Indexdata {
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
    TResult Function(_Indexdata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Indexdata() when $default != null:
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
    TResult Function(_Indexdata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Indexdata():
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
    TResult? Function(_Indexdata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Indexdata() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'key') String key)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Indexdata() when $default != null:
        return $default(_that.content, _that.key);
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
    TResult Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'key') String key)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Indexdata():
        return $default(_that.content, _that.key);
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
    TResult? Function(@JsonKey(name: 'content') String content,
            @JsonKey(name: 'key') String key)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Indexdata() when $default != null:
        return $default(_that.content, _that.key);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Indexdata extends Indexdata {
  const _Indexdata(
      {@JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'key') this.key = ''})
      : super._();
  factory _Indexdata.fromJson(Map<String, dynamic> json) =>
      _$IndexdataFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'key')
  final String key;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IndexdataCopyWith<_Indexdata> get copyWith =>
      __$IndexdataCopyWithImpl<_Indexdata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IndexdataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Indexdata &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, key);

  @override
  String toString() {
    return 'Indexdata(content: $content, key: $key)';
  }
}

/// @nodoc
abstract mixin class _$IndexdataCopyWith<$Res>
    implements $IndexdataCopyWith<$Res> {
  factory _$IndexdataCopyWith(
          _Indexdata value, $Res Function(_Indexdata) _then) =
      __$IndexdataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'key') String key});
}

/// @nodoc
class __$IndexdataCopyWithImpl<$Res> implements _$IndexdataCopyWith<$Res> {
  __$IndexdataCopyWithImpl(this._self, this._then);

  final _Indexdata _self;
  final $Res Function(_Indexdata) _then;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_Indexdata(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
