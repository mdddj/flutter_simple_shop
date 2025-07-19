// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeMenu {
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'svgPath')
  String get svgpath;
  Widget? get icon;
  @JsonKey(name: 'image')
  String get image;
  String? get routerPath;
  Object? get extra;
  VoidCallback? get onTap;
  VoidCallback? get onLongTap;

  /// Create a copy of HomeMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeMenuCopyWith<HomeMenu> get copyWith =>
      _$HomeMenuCopyWithImpl<HomeMenu>(this as HomeMenu, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeMenu &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.svgpath, svgpath) || other.svgpath == svgpath) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.routerPath, routerPath) ||
                other.routerPath == routerPath) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.onLongTap, onLongTap) ||
                other.onLongTap == onLongTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, svgpath, icon, image,
      routerPath, const DeepCollectionEquality().hash(extra), onTap, onLongTap);

  @override
  String toString() {
    return 'HomeMenu(title: $title, svgpath: $svgpath, icon: $icon, image: $image, routerPath: $routerPath, extra: $extra, onTap: $onTap, onLongTap: $onLongTap)';
  }
}

/// @nodoc
abstract mixin class $HomeMenuCopyWith<$Res> {
  factory $HomeMenuCopyWith(HomeMenu value, $Res Function(HomeMenu) _then) =
      _$HomeMenuCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'svgPath') String svgpath,
      Widget? icon,
      @JsonKey(name: 'image') String image,
      String? routerPath,
      Object? extra,
      VoidCallback? onTap,
      VoidCallback? onLongTap});
}

/// @nodoc
class _$HomeMenuCopyWithImpl<$Res> implements $HomeMenuCopyWith<$Res> {
  _$HomeMenuCopyWithImpl(this._self, this._then);

  final HomeMenu _self;
  final $Res Function(HomeMenu) _then;

  /// Create a copy of HomeMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? svgpath = null,
    Object? icon = freezed,
    Object? image = null,
    Object? routerPath = freezed,
    Object? extra = freezed,
    Object? onTap = freezed,
    Object? onLongTap = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      svgpath: null == svgpath
          ? _self.svgpath
          : svgpath // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      routerPath: freezed == routerPath
          ? _self.routerPath
          : routerPath // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra ? _self.extra : extra,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onLongTap: freezed == onLongTap
          ? _self.onLongTap
          : onLongTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _HomeMenu extends HomeMenu {
  const _HomeMenu(
      {@JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'svgPath') this.svgpath = '',
      this.icon,
      @JsonKey(name: 'image') this.image = '',
      this.routerPath,
      this.extra,
      this.onTap,
      this.onLongTap})
      : super._();

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'svgPath')
  final String svgpath;
  @override
  final Widget? icon;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  final String? routerPath;
  @override
  final Object? extra;
  @override
  final VoidCallback? onTap;
  @override
  final VoidCallback? onLongTap;

  /// Create a copy of HomeMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeMenuCopyWith<_HomeMenu> get copyWith =>
      __$HomeMenuCopyWithImpl<_HomeMenu>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeMenu &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.svgpath, svgpath) || other.svgpath == svgpath) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.routerPath, routerPath) ||
                other.routerPath == routerPath) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.onLongTap, onLongTap) ||
                other.onLongTap == onLongTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, svgpath, icon, image,
      routerPath, const DeepCollectionEquality().hash(extra), onTap, onLongTap);

  @override
  String toString() {
    return 'HomeMenu(title: $title, svgpath: $svgpath, icon: $icon, image: $image, routerPath: $routerPath, extra: $extra, onTap: $onTap, onLongTap: $onLongTap)';
  }
}

/// @nodoc
abstract mixin class _$HomeMenuCopyWith<$Res>
    implements $HomeMenuCopyWith<$Res> {
  factory _$HomeMenuCopyWith(_HomeMenu value, $Res Function(_HomeMenu) _then) =
      __$HomeMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'svgPath') String svgpath,
      Widget? icon,
      @JsonKey(name: 'image') String image,
      String? routerPath,
      Object? extra,
      VoidCallback? onTap,
      VoidCallback? onLongTap});
}

/// @nodoc
class __$HomeMenuCopyWithImpl<$Res> implements _$HomeMenuCopyWith<$Res> {
  __$HomeMenuCopyWithImpl(this._self, this._then);

  final _HomeMenu _self;
  final $Res Function(_HomeMenu) _then;

  /// Create a copy of HomeMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? svgpath = null,
    Object? icon = freezed,
    Object? image = null,
    Object? routerPath = freezed,
    Object? extra = freezed,
    Object? onTap = freezed,
    Object? onLongTap = freezed,
  }) {
    return _then(_HomeMenu(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      svgpath: null == svgpath
          ? _self.svgpath
          : svgpath // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      routerPath: freezed == routerPath
          ? _self.routerPath
          : routerPath // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra ? _self.extra : extra,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onLongTap: freezed == onLongTap
          ? _self.onLongTap
          : onLongTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

// dart format on
