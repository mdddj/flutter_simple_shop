// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextModel _$TextModelFromJson(Map<String, dynamic> json) {
  return _TextModel.fromJson(json);
}

/// @nodoc
mixin _$TextModel {
  @JsonKey(name: 'context')
  String get context => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'indexData')
  Indexdata get indexData => throw _privateConstructorUsedError;
  @JsonKey(name: 'intro')
  String get intro => throw _privateConstructorUsedError;
  @JsonKey(name: 'isEncryptionText')
  bool get isEncryptionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateDate')
  String get updateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewPassword')
  String get viewPassword => throw _privateConstructorUsedError;

  /// Serializes this TextModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextModelCopyWith<TextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextModelCopyWith<$Res> {
  factory $TextModelCopyWith(TextModel value, $Res Function(TextModel) then) =
      _$TextModelCopyWithImpl<$Res, TextModel>;
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
class _$TextModelCopyWithImpl<$Res, $Val extends TextModel>
    implements $TextModelCopyWith<$Res> {
  _$TextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      indexData: null == indexData
          ? _value.indexData
          : indexData // ignore: cast_nullable_to_non_nullable
              as Indexdata,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      isEncryptionText: null == isEncryptionText
          ? _value.isEncryptionText
          : isEncryptionText // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      viewPassword: null == viewPassword
          ? _value.viewPassword
          : viewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndexdataCopyWith<$Res> get indexData {
    return $IndexdataCopyWith<$Res>(_value.indexData, (value) {
      return _then(_value.copyWith(indexData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextModelImplCopyWith<$Res>
    implements $TextModelCopyWith<$Res> {
  factory _$$TextModelImplCopyWith(
          _$TextModelImpl value, $Res Function(_$TextModelImpl) then) =
      __$$TextModelImplCopyWithImpl<$Res>;
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
class __$$TextModelImplCopyWithImpl<$Res>
    extends _$TextModelCopyWithImpl<$Res, _$TextModelImpl>
    implements _$$TextModelImplCopyWith<$Res> {
  __$$TextModelImplCopyWithImpl(
      _$TextModelImpl _value, $Res Function(_$TextModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$TextModelImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      indexData: null == indexData
          ? _value.indexData
          : indexData // ignore: cast_nullable_to_non_nullable
              as Indexdata,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      isEncryptionText: null == isEncryptionText
          ? _value.isEncryptionText
          : isEncryptionText // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: null == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String,
      viewPassword: null == viewPassword
          ? _value.viewPassword
          : viewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextModelImpl extends _TextModel {
  const _$TextModelImpl(
      {@JsonKey(name: 'context') this.context = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'indexData') this.indexData = const Indexdata(),
      @JsonKey(name: 'intro') this.intro = '',
      @JsonKey(name: 'isEncryptionText') this.isEncryptionText = false,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'updateDate') this.updateDate = '',
      @JsonKey(name: 'viewPassword') this.viewPassword = ''})
      : super._();

  factory _$TextModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextModelImplFromJson(json);

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

  @override
  String toString() {
    return 'TextModel(context: $context, id: $id, indexData: $indexData, intro: $intro, isEncryptionText: $isEncryptionText, name: $name, updateDate: $updateDate, viewPassword: $viewPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextModelImpl &&
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

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextModelImplCopyWith<_$TextModelImpl> get copyWith =>
      __$$TextModelImplCopyWithImpl<_$TextModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextModelImplToJson(
      this,
    );
  }
}

abstract class _TextModel extends TextModel {
  const factory _TextModel(
          {@JsonKey(name: 'context') final String context,
          @JsonKey(name: 'id') final num id,
          @JsonKey(name: 'indexData') final Indexdata indexData,
          @JsonKey(name: 'intro') final String intro,
          @JsonKey(name: 'isEncryptionText') final bool isEncryptionText,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'updateDate') final String updateDate,
          @JsonKey(name: 'viewPassword') final String viewPassword}) =
      _$TextModelImpl;
  const _TextModel._() : super._();

  factory _TextModel.fromJson(Map<String, dynamic> json) =
      _$TextModelImpl.fromJson;

  @override
  @JsonKey(name: 'context')
  String get context;
  @override
  @JsonKey(name: 'id')
  num get id;
  @override
  @JsonKey(name: 'indexData')
  Indexdata get indexData;
  @override
  @JsonKey(name: 'intro')
  String get intro;
  @override
  @JsonKey(name: 'isEncryptionText')
  bool get isEncryptionText;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'updateDate')
  String get updateDate;
  @override
  @JsonKey(name: 'viewPassword')
  String get viewPassword;

  /// Create a copy of TextModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextModelImplCopyWith<_$TextModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Indexdata _$IndexdataFromJson(Map<String, dynamic> json) {
  return _Indexdata.fromJson(json);
}

/// @nodoc
mixin _$Indexdata {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;

  /// Serializes this Indexdata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexdataCopyWith<Indexdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexdataCopyWith<$Res> {
  factory $IndexdataCopyWith(Indexdata value, $Res Function(Indexdata) then) =
      _$IndexdataCopyWithImpl<$Res, Indexdata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'key') String key});
}

/// @nodoc
class _$IndexdataCopyWithImpl<$Res, $Val extends Indexdata>
    implements $IndexdataCopyWith<$Res> {
  _$IndexdataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexdataImplCopyWith<$Res>
    implements $IndexdataCopyWith<$Res> {
  factory _$$IndexdataImplCopyWith(
          _$IndexdataImpl value, $Res Function(_$IndexdataImpl) then) =
      __$$IndexdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'key') String key});
}

/// @nodoc
class __$$IndexdataImplCopyWithImpl<$Res>
    extends _$IndexdataCopyWithImpl<$Res, _$IndexdataImpl>
    implements _$$IndexdataImplCopyWith<$Res> {
  __$$IndexdataImplCopyWithImpl(
      _$IndexdataImpl _value, $Res Function(_$IndexdataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_$IndexdataImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexdataImpl extends _Indexdata {
  const _$IndexdataImpl(
      {@JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'key') this.key = ''})
      : super._();

  factory _$IndexdataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexdataImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'key')
  final String key;

  @override
  String toString() {
    return 'Indexdata(content: $content, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexdataImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, key);

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexdataImplCopyWith<_$IndexdataImpl> get copyWith =>
      __$$IndexdataImplCopyWithImpl<_$IndexdataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexdataImplToJson(
      this,
    );
  }
}

abstract class _Indexdata extends Indexdata {
  const factory _Indexdata(
      {@JsonKey(name: 'content') final String content,
      @JsonKey(name: 'key') final String key}) = _$IndexdataImpl;
  const _Indexdata._() : super._();

  factory _Indexdata.fromJson(Map<String, dynamic> json) =
      _$IndexdataImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'key')
  String get key;

  /// Create a copy of Indexdata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexdataImplCopyWith<_$IndexdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
