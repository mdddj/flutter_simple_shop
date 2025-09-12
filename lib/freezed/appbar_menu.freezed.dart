// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppbarMenu {
  @JsonKey(name: 'icon')
  String get icon;
  @JsonKey(name: 'title')
  String get title;

  /// Create a copy of AppbarMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppbarMenuCopyWith<AppbarMenu> get copyWith =>
      _$AppbarMenuCopyWithImpl<AppbarMenu>(this as AppbarMenu, _$identity);

  /// Serializes this AppbarMenu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppbarMenu &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title);

  @override
  String toString() {
    return 'AppbarMenu(icon: $icon, title: $title)';
  }
}

/// @nodoc
abstract mixin class $AppbarMenuCopyWith<$Res> {
  factory $AppbarMenuCopyWith(
          AppbarMenu value, $Res Function(AppbarMenu) _then) =
      _$AppbarMenuCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class _$AppbarMenuCopyWithImpl<$Res> implements $AppbarMenuCopyWith<$Res> {
  _$AppbarMenuCopyWithImpl(this._self, this._then);

  final AppbarMenu _self;
  final $Res Function(AppbarMenu) _then;

  /// Create a copy of AppbarMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_self.copyWith(
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppbarMenu].
extension AppbarMenuPatterns on AppbarMenu {
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
    TResult Function(_AppbarMenu value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu() when $default != null:
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
    TResult Function(_AppbarMenu value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_AppbarMenu value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu() when $default != null:
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
    TResult Function(@JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'title') String title)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu() when $default != null:
        return $default(_that.icon, _that.title);
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
    TResult Function(@JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'title') String title)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu():
        return $default(_that.icon, _that.title);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(@JsonKey(name: 'icon') String icon,
            @JsonKey(name: 'title') String title)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppbarMenu() when $default != null:
        return $default(_that.icon, _that.title);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppbarMenu extends AppbarMenu {
  const _AppbarMenu(
      {@JsonKey(name: 'icon') this.icon = '',
      @JsonKey(name: 'title') this.title = ''})
      : super._();
  factory _AppbarMenu.fromJson(Map<String, dynamic> json) =>
      _$AppbarMenuFromJson(json);

  @override
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Create a copy of AppbarMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppbarMenuCopyWith<_AppbarMenu> get copyWith =>
      __$AppbarMenuCopyWithImpl<_AppbarMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppbarMenuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppbarMenu &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title);

  @override
  String toString() {
    return 'AppbarMenu(icon: $icon, title: $title)';
  }
}

/// @nodoc
abstract mixin class _$AppbarMenuCopyWith<$Res>
    implements $AppbarMenuCopyWith<$Res> {
  factory _$AppbarMenuCopyWith(
          _AppbarMenu value, $Res Function(_AppbarMenu) _then) =
      __$AppbarMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class __$AppbarMenuCopyWithImpl<$Res> implements _$AppbarMenuCopyWith<$Res> {
  __$AppbarMenuCopyWithImpl(this._self, this._then);

  final _AppbarMenu _self;
  final $Res Function(_AppbarMenu) _then;

  /// Create a copy of AppbarMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? icon = null,
    Object? title = null,
  }) {
    return _then(_AppbarMenu(
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
