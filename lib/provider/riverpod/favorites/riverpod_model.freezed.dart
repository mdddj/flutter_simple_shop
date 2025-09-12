// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritesStateModel {
  List<MyFavoritesModel> get favorites;
  set favorites(List<MyFavoritesModel> value);
  int get page;
  set page(int value);

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoritesStateModelCopyWith<FavoritesStateModel> get copyWith =>
      _$FavoritesStateModelCopyWithImpl<FavoritesStateModel>(
          this as FavoritesStateModel, _$identity);

  /// Serializes this FavoritesStateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'FavoritesStateModel(favorites: $favorites, page: $page)';
  }
}

/// @nodoc
abstract mixin class $FavoritesStateModelCopyWith<$Res> {
  factory $FavoritesStateModelCopyWith(
          FavoritesStateModel value, $Res Function(FavoritesStateModel) _then) =
      _$FavoritesStateModelCopyWithImpl;
  @useResult
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class _$FavoritesStateModelCopyWithImpl<$Res>
    implements $FavoritesStateModelCopyWith<$Res> {
  _$FavoritesStateModelCopyWithImpl(this._self, this._then);

  final FavoritesStateModel _self;
  final $Res Function(FavoritesStateModel) _then;

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? page = null,
  }) {
    return _then(_self.copyWith(
      favorites: null == favorites
          ? _self.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [FavoritesStateModel].
extension FavoritesStateModelPatterns on FavoritesStateModel {
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
    TResult Function(_FavoritesStateModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel() when $default != null:
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
    TResult Function(_FavoritesStateModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel():
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
    TResult? Function(_FavoritesStateModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel() when $default != null:
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
    TResult Function(List<MyFavoritesModel> favorites, int page)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel() when $default != null:
        return $default(_that.favorites, _that.page);
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
    TResult Function(List<MyFavoritesModel> favorites, int page) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel():
        return $default(_that.favorites, _that.page);
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
    TResult? Function(List<MyFavoritesModel> favorites, int page)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FavoritesStateModel() when $default != null:
        return $default(_that.favorites, _that.page);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FavoritesStateModel implements FavoritesStateModel {
  _FavoritesStateModel({required this.favorites, required this.page});
  factory _FavoritesStateModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritesStateModelFromJson(json);

  @override
  List<MyFavoritesModel> favorites;
  @override
  int page;

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoritesStateModelCopyWith<_FavoritesStateModel> get copyWith =>
      __$FavoritesStateModelCopyWithImpl<_FavoritesStateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FavoritesStateModelToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'FavoritesStateModel(favorites: $favorites, page: $page)';
  }
}

/// @nodoc
abstract mixin class _$FavoritesStateModelCopyWith<$Res>
    implements $FavoritesStateModelCopyWith<$Res> {
  factory _$FavoritesStateModelCopyWith(_FavoritesStateModel value,
          $Res Function(_FavoritesStateModel) _then) =
      __$FavoritesStateModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<MyFavoritesModel> favorites, int page});
}

/// @nodoc
class __$FavoritesStateModelCopyWithImpl<$Res>
    implements _$FavoritesStateModelCopyWith<$Res> {
  __$FavoritesStateModelCopyWithImpl(this._self, this._then);

  final _FavoritesStateModel _self;
  final $Res Function(_FavoritesStateModel) _then;

  /// Create a copy of FavoritesStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favorites = null,
    Object? page = null,
  }) {
    return _then(_FavoritesStateModel(
      favorites: null == favorites
          ? _self.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MyFavoritesModel>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
