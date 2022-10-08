// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'riverpod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesStateModelCopyWith<FavoritesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateModelCopyWith<$Res> {
  factory $FavoritesStateModelCopyWith(
          FavoritesStateModel value, $Res Function(FavoritesStateModel) then) =
      _$FavoritesStateModelCopyWithImpl<$Res>;
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class _$FavoritesStateModelCopyWithImpl<$Res>
    implements $FavoritesStateModelCopyWith<$Res> {
  _$FavoritesStateModelCopyWithImpl(this._value, this._then);

  final FavoritesStateModel _value;
  // ignore: unused_field
  final $Res Function(FavoritesStateModel) _then;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoritesStateModelCopyWith<$Res>
    implements $FavoritesStateModelCopyWith<$Res> {
  factory _$$_FavoritesStateModelCopyWith(_$_FavoritesStateModel value,
          $Res Function(_$_FavoritesStateModel) then) =
      __$$_FavoritesStateModelCopyWithImpl<$Res>;
  @override
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class __$$_FavoritesStateModelCopyWithImpl<$Res>
    extends _$FavoritesStateModelCopyWithImpl<$Res>
    implements _$$_FavoritesStateModelCopyWith<$Res> {
  __$$_FavoritesStateModelCopyWithImpl(_$_FavoritesStateModel _value,
      $Res Function(_$_FavoritesStateModel) _then)
      : super(_value, (v) => _then(v as _$_FavoritesStateModel));

  @override
  _$_FavoritesStateModel get _value => super._value as _$_FavoritesStateModel;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_FavoritesStateModel(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritesStateModel implements _FavoritesStateModel {
  _$_FavoritesStateModel({required this.favorites, required this.page});

  factory _$_FavoritesStateModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesStateModelFromJson(json);

  @override
  List<MyFavoritesModel> favorites;
  @override
  int page;

  @override
  String toString() {
    return 'FavoritesStateModel(favorites: $favorites, page: $page)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_FavoritesStateModelCopyWith<_$_FavoritesStateModel> get copyWith =>
      __$$_FavoritesStateModelCopyWithImpl<_$_FavoritesStateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesStateModelToJson(
      this,
    );
  }
}

abstract class _FavoritesStateModel implements FavoritesStateModel {
  factory _FavoritesStateModel(
      {required List<MyFavoritesModel> favorites,
      required int page}) = _$_FavoritesStateModel;

  factory _FavoritesStateModel.fromJson(Map<String, dynamic> json) =
      _$_FavoritesStateModel.fromJson;

  @override
  List<MyFavoritesModel> get favorites;
  set favorites(List<MyFavoritesModel> value);
  @override
  int get page;
  set page(int value);
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesStateModelCopyWith<_$_FavoritesStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
