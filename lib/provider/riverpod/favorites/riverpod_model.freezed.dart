// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoritesStateModel _$FavoritesStateModelFromJson(Map<String, dynamic> json) {
  return _FavoritesStateModel.fromJson(json);
}

/// @nodoc
mixin _$FavoritesStateModel {
  List<MyFavoritesModel> get favorites => throw _privateConstructorUsedError;
  set favorites(List<MyFavoritesModel> value) =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;

  /// Serializes this FavoritesStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesStateModelCopyWith<FavoritesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateModelCopyWith<$Res> {
  factory $FavoritesStateModelCopyWith(
          FavoritesStateModel value, $Res Function(FavoritesStateModel) then) =
      _$FavoritesStateModelCopyWithImpl<$Res, FavoritesStateModel>;
  @useResult
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class _$FavoritesStateModelCopyWithImpl<$Res, $Val extends FavoritesStateModel>
    implements $FavoritesStateModelCopyWith<$Res> {
  _$FavoritesStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesStateModelImplCopyWith<$Res>
    implements $FavoritesStateModelCopyWith<$Res> {
  factory _$$FavoritesStateModelImplCopyWith(_$FavoritesStateModelImpl value,
          $Res Function(_$FavoritesStateModelImpl) then) =
      __$$FavoritesStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class __$$FavoritesStateModelImplCopyWithImpl<$Res>
    extends _$FavoritesStateModelCopyWithImpl<$Res, _$FavoritesStateModelImpl>
    implements _$$FavoritesStateModelImplCopyWith<$Res> {
  __$$FavoritesStateModelImplCopyWithImpl(_$FavoritesStateModelImpl _value,
      $Res Function(_$FavoritesStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? page = null,
  }) {
    return _then(_$FavoritesStateModelImpl(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesStateModelImpl implements _FavoritesStateModel {
  _$FavoritesStateModelImpl({required this.favorites, required this.page});

  factory _$FavoritesStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesStateModelImplFromJson(json);

  @override
  List<MyFavoritesModel> favorites;
  @override
  int page;

  @override
  String toString() {
    return 'FavoritesStateModel(favorites: $favorites, page: $page)';
  }

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateModelImplCopyWith<_$FavoritesStateModelImpl> get copyWith =>
      __$$FavoritesStateModelImplCopyWithImpl<_$FavoritesStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesStateModelImplToJson(
      this,
    );
  }
}

abstract class _FavoritesStateModel implements FavoritesStateModel {
  factory _FavoritesStateModel(
      {required List<MyFavoritesModel> favorites,
      required int page}) = _$FavoritesStateModelImpl;

  factory _FavoritesStateModel.fromJson(Map<String, dynamic> json) =
      _$FavoritesStateModelImpl.fromJson;

  @override
  List<MyFavoritesModel> get favorites;
  set favorites(List<MyFavoritesModel> value);
  @override
  int get page;
  set page(int value);

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesStateModelImplCopyWith<_$FavoritesStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
