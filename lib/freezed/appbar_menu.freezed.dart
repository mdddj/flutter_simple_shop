// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
